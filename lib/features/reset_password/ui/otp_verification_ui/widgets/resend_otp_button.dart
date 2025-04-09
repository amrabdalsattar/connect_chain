part of 'resend_otp_row.dart';

class ResendOtpButton extends StatefulWidget {
  const ResendOtpButton({super.key});

  @override
  State<ResendOtpButton> createState() => _ResendOtpButtonState();
}

class _ResendOtpButtonState extends State<ResendOtpButton> {
  Timer? _timer;
  int _secondsRemaining = 0;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() {
      _secondsRemaining = 120;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formattedTime() {
    final minutes = (_secondsRemaining ~/ 60).toString().padLeft(2, '0');
    final seconds = (_secondsRemaining % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _startTimer();
      },
      child: Text(
        _secondsRemaining > 0
            ? 'إعادة الإرسال خلال ${_formattedTime()}'
            : 'إعادة إرسال الرمز',
        style:
            AppTextStyles.cairoSemiOpacityBlackRegular14.copyWith(fontSize: 12),
      ),
    );
  }
}
