import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  void submit() {
    log(_email);
    log(_password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      body: Form(
          key: _formKey,
          child: Scrollbar(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'example@email.com',
                    ),
                    onSaved: (value) {
                      _email = value;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                    ),
                    onSaved: (value) {
                      _password = value;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      child: Text('Iniciar Sesión'),
                      onPressed: () {
                        _formKey.currentState.save();

                        this.submit();
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
