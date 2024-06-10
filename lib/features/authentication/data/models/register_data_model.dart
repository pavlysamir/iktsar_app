class AddUserModel {
  final String firstName;
  final String lastName;
  final String email;

  final String mobileNumber;

  final String id;

  AddUserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.mobileNumber,
    required this.id,
  });

  factory AddUserModel.fromJson(Map<String, dynamic> json) {
    return AddUserModel(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      mobileNumber: json['mobileNumber'] as String,
      id: json['_id'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'mobileNumber': mobileNumber,
      '_id': id,
      'id': id,
    };
  }
}
