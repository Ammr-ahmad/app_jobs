class User {
  final String id;
  final String userName;
  final String email;
  final String password;
  final String phone;
  final String date;

  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.password,
    required this.phone,
    required this.date,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['_id'],
        userName: json['userName'],
        email: json['email'],
        password: json['password'],
        phone: json['phone'],
        date: json['date']);
  }
}
