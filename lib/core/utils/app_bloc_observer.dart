import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('🟩 Created: ${bloc.runtimeType}');
  }

  @override
  void onClose(BlocBase bloc) {
    print('⬛️ Closed: ${bloc.runtimeType}');
    super.onClose(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('🟦 Event: ${bloc.runtimeType} => $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('🟨 Change: ${bloc.runtimeType} => $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('🟧 Transition: ${bloc.runtimeType} => $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('🟥 Error: ${bloc.runtimeType} => $error');
    super.onError(bloc, error, stackTrace);
  }
}
