import 'package:flutter/material.dart';
import 'package:monlmo/src/common_widgets/reusableTextfield.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  TextEditingController _benutzernamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwortcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(45.0),
                child: Image(
                  width: 100,
                  image: AssetImage('assets/monlmo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Enloggen",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                width: 50,
                                image: AssetImage('assets/google.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                width: 50,
                                image: AssetImage('assets/fb.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                width: 50,
                                image: AssetImage('assets/apple.png'),
                              ),
                            ],
                          ),
                        ),
                        reusableTextfield("Email", _emailcontroller),
                        SizedBox(
                          height: 20,
                        ),
                        reusableTextfield(
                            "Benutzername", _benutzernamecontroller),
                        SizedBox(
                          height: 20,
                        ),
                        reusableTextfield("Passwort", _passwortcontroller),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Passwort vergessen?",
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: null,
                          child: Text('Einloggen'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Noch kein Account? Account Erstellen",
                            style: Theme.of(context).textTheme.headlineSmall),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
