import 'package:flutter/material.dart';
import 'package:my_app/features/posts/domain/repositories/post_new_user.dart';
import '../../domain/entities/user.dart';

class SignupFormModel extends ChangeNotifier {
  final PostNewUser postNewUser;
  String name = '';
  String email = '';
  String password = '';
  bool isLoading = false;
  String errorMessage = '';

  SignupFormModel({required this.postNewUser});

  void setName(String value) {
    name = value;
    notifyListeners();
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  Future<void> signup() async {
    isLoading = true;
    errorMessage = '';
    notifyListeners();
    int id = 1;
    final user = User(id: id, name: name, email: email, password: password);
    final result = await postNewUser.addUser(user);
    id++;
    isLoading = false;
    if (!result) {
      errorMessage = 'Error al registrar el usuario';
    }
    notifyListeners();
  }
}
