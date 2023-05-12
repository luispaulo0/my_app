import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/features/posts/data/models/post_model_user.dart';

abstract class FirebaseServiceSource {
  Future<bool> addUser(int id,String name, String email, String password);
  Future<List> getUsers();
}

class FirebaseService implements FirebaseServiceSource {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List> getUsers() async {
    List user = [];
    CollectionReference collectionReferenceUser = db.collection('users');
    QuerySnapshot queryUser = await collectionReferenceUser.get();
    queryUser.docs.forEach((element) {
      user.add(element.data());
    });
    return user;
  }

  Future<bool> addUser(int id,String name, String email, String password) async {
    try {
      
      PostModelUser user =
          PostModelUser.fromStringValues(id, name, email, password);
     
      await db.collection('users').add(user.toJson());

      return true;
    } catch (e) {
      print("Error al agregar usuario nuevo: $e");
      return false;
    }
  }
}
