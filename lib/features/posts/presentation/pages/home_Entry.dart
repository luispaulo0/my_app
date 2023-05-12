import 'package:flutter/material.dart';
import 'package:my_app/features/posts/presentation/pages/paginaLogin.dart';
import 'package:my_app/features/posts/presentation/pages/signUp.dart';

class homeEntry extends StatefulWidget {
  homeEntry({Key? key}) : super(key: key);

  @override
  State<homeEntry> createState() => _homeEntryState();
}

class _homeEntryState extends State<homeEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Image.asset(
                  'assets/images/LogoInicio.png',
                  width: 340.0,
                  height: 360.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            minimumSize: const Size(350.0, 50.0),
                            primary: Colors.white,
                            backgroundColor: Color.fromARGB(255, 70, 101, 255),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 35, 0),
                                child: Image.asset(
                                  'assets/images/logotipo-de-google-glass.png',
                                  width: 20.0,
                                  height: 20.0,
                                ),
                              ),
                              const Text(
                                'Continuar con Google',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            minimumSize: const Size(350.0, 50.0),
                            primary: Colors.white,
                            backgroundColor: Color.fromARGB(255, 40, 63, 174),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 35, 0),
                                child: Image.asset(
                                  'assets/images/facebook.png',
                                  width: 25.0,
                                  height: 25.0,
                                ),
                              ),
                              const Text(
                                'Continuar con Facebook',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 105, 105, 105),
                                  width: 2.0,
                                )),
                            minimumSize: const Size(350.0, 50.0),
                            primary: Color.fromARGB(255, 105, 105, 105),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signUp()));
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 30, 0),
                                child: Image.asset(
                                  'assets/images/email-removebg-preview (1).png',
                                  width: 30.0,
                                  height: 30.0,
                                ),
                              ),
                              const Text(
                                'Registrarse con e-mail',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                        child: Text(
                          'Entrar como invitado',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                          'Entrar como vendedor',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                        child: Row(
                          children: [
                            const Text(
                              '¿Ya tienes una cuenta?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 70, 70, 70),
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 0.0,
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    minimumSize: const Size(5, 5),
                                    primary:
                                        Color.fromARGB(255, 105, 105, 105)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PantallaLogin()));
                                },
                                child: const Text(
                                  'Iniciar sesión',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
