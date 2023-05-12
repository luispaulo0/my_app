// ignore_for_file: unnecessary_const
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_app/features/posts/data/datasource/firebase_service.dart';
import 'package:my_app/features/posts/data/repositories/post_firebase_new_user.dart';
import 'package:my_app/features/posts/domain/repositories/post_new_user.dart';
import 'package:provider/provider.dart';
import '../provider/signup_form_model.dart';

enum aceptarT { aceptar }

class signUp extends StatefulWidget {
  signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpSate();
}

class _signUpSate extends State<signUp> {
  bool isChecked = false;
  bool isHidePassword = true;
  aceptarT? _character = aceptarT.aceptar;
  @override
  Widget build(BuildContext context) {
    final postNewUser = Provider.of<PostNewUser>(context);
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back,
                  color: Colors.pinkAccent, size: 25.0),
              onPressed: () => Navigator.pop(context, true),
            );
          }),
          title: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Registrate'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Image.asset(
                  'assets/images/LogoWhite.png',
                  width: 90.0,
                  height: 80.0,
                ),
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 79, 21, 129),
        ),
        body: ChangeNotifierProvider(
            create: (_) => SignupFormModel(postNewUser: postNewUser),
            child: Consumer<SignupFormModel>(
              builder: (_, model, __) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: SafeArea(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 20, 0),
                    child: ListView(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Crear una cuenta para empezar a usar la App',
                            style: TextStyle(
                              color: Color.fromARGB(255, 69, 69, 69),
                              fontSize: 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
                            child: Text(
                              'Nombre',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            onChanged: (value) => model.setName(value),
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 69, 69, 69),
                              ),
                              labelText: "Nombre completo",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child: Text(
                              'Correo electrónico',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextField(
                            onChanged: (value) => model.setEmail(value),
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 69, 69, 69),
                              ),
                              labelText: "Correo electrónico",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child: Text(
                              'Contraseña',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: SizedBox(
                            height: 58,
                            child: TextField(
                              onChanged: (value) => model.setPassword(value),
                              obscureText: isHidePassword,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                suffix: InkWell(
                                    child: Icon(
                                  isHidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                )),
                                labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 69, 69, 69),
                                ),
                                labelText: "Contraseña",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 35.0, top: 10.0, bottom: 5.0),
                          child: Text(
                            'La contraseña debe de tener caracteres, números y símbolos con un  mínimo  de 6 caracteres',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ListTile(
                            leading: Radio<aceptarT>(
                              value: aceptarT.aceptar,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) =>
                                      Color.fromARGB(255, 153, 149, 149)),
                              groupValue: _character,
                              onChanged: (aceptarT? value) {},
                            ),
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Al registrarme, acepto los ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  TextSpan(
                                      text: "términos y condiciones",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pinkAccent,
                                      )),
                                  TextSpan(
                                    text: " y la",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                  TextSpan(
                                      text: " política de privacidad",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pinkAccent,
                                      )),
                                ],
                              )),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 120.0, left: 20.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              minimumSize: const Size(350.0, 50.0),
                              primary: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 117, 167, 86),
                            ),
                            onPressed:
                                model.isLoading ? null : () => model.signup(),
                            child: model.isLoading
                                ? const CircularProgressIndicator()
                                : const Text(
                                    'Crear cuenta',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                        if (model.errorMessage.isNotEmpty)
                          Text(
                            model.errorMessage,
                            style: TextStyle(color: Colors.red),
                          ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 40, 0, 5),
                          child: Row(
                            children: const [
                              Text(
                                '¿Ya tienes una cuenta?',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 70, 70, 70),
                                  fontSize: 15,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  'Iniciar sesion',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ),
              ),
            )));
  }
}
