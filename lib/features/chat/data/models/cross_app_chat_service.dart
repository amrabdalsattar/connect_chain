import 'package:zego_zim/zego_zim.dart';

class CrossAppChatService {
  static final CrossAppChatService _instance = CrossAppChatService._internal();
  static CrossAppChatService get instance => _instance;
  CrossAppChatService._internal();

  ZIM? _zim;
  String? _currentUserId;
  String? _currentUserName;
  String? _appIdentifier;

  // SAME credentials for both apps
  static const int appID = 123456789;
  static const String appSign = 'your_app_sign_here';

  Future<void> initZIM({String? appIdentifier}) async {
    if (_zim != null) return;

    _appIdentifier = appIdentifier;

    ZIMAppConfig config = ZIMAppConfig();
    config.appID = appID;
    config.appSign = appSign;

    _zim = ZIM.create(config);
  }

  Future<void> login(String userID, String userName) async {
    await initZIM();

    ZIMLoginConfig config = ZIMLoginConfig();
    config.userName = userName;
    config.token = '';
    config.isOfflineLogin = false;

    try {
      await _zim!.login(userID, config);
      _currentUserId = userID;
      _currentUserName = userName;
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<void> sendMessage(String targetUserID, String messageText) async {
    if (_zim == null) throw Exception('ZIM not initialized');

    ZIMTextMessage message = ZIMTextMessage(message: messageText);
    ZIMMessageSendConfig config = ZIMMessageSendConfig();

    try {
      await _zim!.sendPeerMessage(message, targetUserID, config);
    } catch (e) {
      throw Exception('Failed to send message: $e');
    }
  }

  Future<List<ZIMMessage>> getMessages(String conversationID) async {
    if (_zim == null) throw Exception('ZIM not initialized');

    ZIMMessageQueryConfig config = ZIMMessageQueryConfig();
    config.count = 50;
    config.reverse = true;

    try {
      ZIMMessageQueriedResult result = await _zim!.queryHistoryMessage(
        conversationID,
        ZIMConversationType.peer,
        config,
      );
      return result.messageList;
    } catch (e) {
      throw Exception('Failed to get messages: $e');
    }
  }

  void setMessageListener(Function(List<ZIMMessage>) onMessageReceived) {
    ZIMEventHandler.onReceivePeerMessage =
        (ZIM zim, List<ZIMMessage> messageList, String fromUserID) {
      onMessageReceived(messageList);
    };
  }

  // Helper method to check if user is from different app
  bool isFromDifferentApp(String userId) {
    if (_appIdentifier == null) return false;
    return !userId.startsWith(_appIdentifier!);
  }

  String? get currentUserId => _currentUserId;
  String? get currentUserName => _currentUserName;
}
