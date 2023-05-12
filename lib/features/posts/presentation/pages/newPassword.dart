import 'package:flutter/material.dart';

import 'dart:convert';


class nwPassword extends StatefulWidget {
  nwPassword({Key? key}) : super(key: key);

  @override
  State<nwPassword> createState() => _nwPasswordState();
}

class _nwPasswordState extends State<nwPassword> {
  final _password = TextEditingController();
  final _confirm = TextEditingController();
  @override
  void dispose() {
    _password.dispose();
    _confirm.dispose();
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
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: const Text(
                      'Por seguridad, tu contraseña dede tener una longitud de entre 8 a 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un carácter especial.',
                      style: TextStyle(
                        color: Color.fromARGB(238, 119, 116, 116),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(left: 32),
                          child: const Text('Nueva contraseña',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          padding: const EdgeInsets.only(top: 3),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(left: 32),
                          margin: const EdgeInsets.only(top: 35),
                          child: const Text('Confirmar nueva contraseña',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          height: 80,
                          width: 350,
                          padding: const EdgeInsets.only(top: 3),
                          margin: const EdgeInsets.all(0),
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
                            onPressed: () {},
                            child: const Text(
                              'Actualizar contraseña',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
