import 'dart:ui';

class User {
  final String username;
  final String email;
  late Image? avatar;
  User({required this.username, required this.email, this.avatar});
}