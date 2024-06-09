class AddUserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String mobileNumber;
  final bool isVerified;
  final bool isDeleted;
  final bool isSuspended;
  final String otp;
  final String role;
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  AddUserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.mobileNumber,
    required this.isVerified,
    required this.isDeleted,
    required this.isSuspended,
    required this.otp,
    required this.role,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory AddUserModel.fromJson(Map<String, dynamic> json) {
    return AddUserModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      mobileNumber: json['mobileNumber'] as String,
      isVerified: json['isVerified'] as bool,
      isDeleted: json['isDeleted'] as bool,
      isSuspended: json['isSuspended'] as bool,
      otp: json['OTP'] as String,
      role: json['role'] as String,
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'mobileNumber': mobileNumber,
      'isVerified': isVerified,
      'isDeleted': isDeleted,
      'isSuspended': isSuspended,
      'OTP': otp,
      'role': role,
      '_id': id,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      '__v': v,
      'id': id,
    };
  }
}
