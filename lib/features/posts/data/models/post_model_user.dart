import 'package:my_app/features/posts/domain/entities/user.dart';

class PostModelUser extends User {
  PostModelUser({
    required int id,
    required String name,
    required String email,
    required String password,
  }) : super(id: id, name: name, email: email, password: password);

  factory PostModelUser.fromStringValues(
      int id, String name, String email, String password) {
    return PostModelUser(
      id: id,
      name: name,
      email: email,
      password: password,
    );
  }

  factory PostModelUser.fromEntity(User user) {
    return PostModelUser(
        id: user.id,
        name: user.name,
        email: user.email,
        password: user.password);
  }
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
      };
}
