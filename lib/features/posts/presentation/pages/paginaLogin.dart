import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/features/posts/presentation/pages/recover_password.dart';


class PantallaLogin extends StatefulWidget {
  const PantallaLogin({Key? key}) : super(key: key);

  @override
  _PantallaLoginState createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iniciar sesión"),
        backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
        leading: IconButton(
          onPressed: () => {Navigator.pop(context, true)},
          color: Colors.pink,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 50, 35, 0),
                            child: const Text(
                              "Inicia sesión con tu cuenta para continuar",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 230.0),
                                  child: const Text(
                                    "Correo electrónico",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 10),
                                  child: TextField(
                                      controller: _email,
                                      decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  189, 189, 189, 1)),
                                          labelText: "Email Address",
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ))),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(right: 270.0),
                                  child: const Text(
                                    "Contraseña",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: TextField(
                                    controller: _password,
                                    obscureText: isHidePassword,
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                      suffix: InkWell(
                                          onTap: _togglePasswordView,
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
                                Container(
                                  padding: const EdgeInsets.only(left: 120.0),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    recoverPssw()));
                                      },
                                      child: const Text(
                                        "¿Has olvidado tu contraseña?",
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(252, 21, 96, 1)),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(117, 167, 87, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    minimumSize: const Size(350.0, 60.0),
                                    // primary: Colors.white,
                                  ),
                                  onPressed: () {
                                    //AQUI PONER NUEVA ACCION
                                    // _procesologin();
                                  },
                                  child: const Text(
                                    'Ingresar',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 25),
                                child: const Text.rich(TextSpan(
                                  text: "¿Todavía no tienes una cuenta?",
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: " Regístrate",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(252, 21, 96, 1),
                                            fontWeight: FontWeight.bold))
                                  ],
                                )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHidePassword = !isHidePassword;
    });
  }
}
