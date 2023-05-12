import 'package:my_app/features/posts/domain/entities/user.dart';

abstract class PostNewUser {
  Future<bool> addUser(User user);
}


