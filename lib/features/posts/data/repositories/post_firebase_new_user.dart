import '../../domain/entities/user.dart';
import '../../domain/repositories/post_new_user.dart';
import '../datasource/firebase_service.dart';

class PostFirebaseNewUser implements PostNewUser {
  final FirebaseServiceSource firebaseServiceSource;
  
  PostFirebaseNewUser({required this.firebaseServiceSource});

  Future<bool> addUser(User user) async {
    return firebaseServiceSource.addUser(
        user.id, user.name, user.email, user.password);
  }
}
