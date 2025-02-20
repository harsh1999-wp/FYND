import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String phoneNo;
  final String password;
  final String address;
  final String role;
  final String token;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.password,
    required this.address,
    required this.role,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phoneNo': phoneNo,
      'password': password,
      'address': address,
      'role': role,
      'token': token,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      phoneNo: map['phoneNo'] ?? '',
      password: map['password'] ?? '',
      address: map['address'] ?? '',
      role: map['role'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phoneNo,
    String? password,
    String? address,
    String? role,
    String? token,
    List<dynamic>? cart,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phoneNo: phoneNo ?? this.phoneNo,
      password: password ?? this.password,
      address: address ?? this.address,
      role: role ?? this.role,
      token: token ?? this.token,
    );
  }
}
