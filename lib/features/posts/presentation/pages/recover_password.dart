import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:my_app/features/posts/presentation/pages/newPassword.dart';
import 'dart:convert';


class recoverPssw extends StatefulWidget {
  recoverPssw({Key? key}) : super(key: key);

  @override
  State<recoverPssw> createState() => _recoverPsswState();
}

class _recoverPsswState extends State<recoverPssw> {
  final _email = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar contraseña"),
        backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
        leading: IconButton(
          onPressed: () => {Navigator.pop(context, true)},
          color: Colors.pink,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 35),
                        child: const Text(
                            'Ingresa tu email para restablecer tu contraseña',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 123, 122, 122),
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(left: 32),
                        child: const Text('Correo electrònico',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                          height: 50,
                          width: 350,
                          child: TextField(
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                hintStyle: const TextStyle(color: Colors.grey),
                                hintText: 'Dirección de correo'),
                          )),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 10, left: 15, right: 0),
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: const Text(
                          'Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña.',
                          style: TextStyle(
                            color: Color.fromARGB(239, 189, 189, 189),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(117, 167, 87, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            minimumSize: const Size(350.0, 60.0),
                            // primary: Colors.white,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => nwPassword()));
                          },
                          child: const Text(
                            'Enviar solicitud',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
