class AuthResponseModle {
  final String message;
  //final AddUserModel addUser;

  AuthResponseModle({
    required this.message,
    // required this.addUser,
  });

  factory AuthResponseModle.fromJson(Map<String, dynamic> json) {
    return AuthResponseModle(
      message: json['message'],
      //addUser: AddUserModel.fromJson(json['addUser']),
    );
  }
}
