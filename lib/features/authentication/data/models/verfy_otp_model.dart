class VerifyOtpModle {
  final String message;
  final String token;

  VerifyOtpModle({
    required this.message,
    required this.token,
  });

  factory VerifyOtpModle.fromJson(Map<String, dynamic> json) {
    return VerifyOtpModle(
      message: json['message'],
      token: json['token'],
    );
  }
}
