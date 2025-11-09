// lib/models/user_model.dart
class UserModel {
  final String uid;
  final String nickname;
  final String email;
  final String password; // Untuk simulasi login

  UserModel({
    required this.uid,
    required this.nickname,
    required this.email,
    required this.password,
  });
}

// data dummy
final UserModel currentUser = UserModel(
  uid: '2205101116P',
  nickname: 'User',
  email: 'user@gmail.com',
  password: '123456',
);
