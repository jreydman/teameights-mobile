import 'dart:ui';

class TNotification {
  final String title;
  final String? data;
  TNotification({required this.title, this.data});
}

class Message {
  final String from;
  final String data;
  Message({required this.from, required this.data});
}

class User {
  final String username;
  final String email;
  late Image? avatar;
  List<Message> messagePool;
  List<TNotification> notificationPool;
  User({required this.username, required this.email, this.avatar, required this.messagePool, required this.notificationPool});
}