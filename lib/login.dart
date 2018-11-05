import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget _inputLogin(TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(80.0, 15.0, 80.0, 0.0),
      child: TextFormField(
          decoration: InputDecoration(
              labelText: 'Enter your username', border: OutlineInputBorder()),
          controller: controller),
    );
  }

  @override
  Widget build(BuildContext context) {
    final myController = new TextEditingController();
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Container(
          alignment: const Alignment(0.0, 0.0),
          child: new Column(
            children: <Widget>[
              SizedBox(
                height: height * 0.35,
              ),
              Text('Đăng nhập', style: TextStyle(fontSize: 20.0)),
              SizedBox(
                height: 10.0,
              ),
              _inputLogin(myController),
              _inputLogin(myController),
            ],
          )),
    );
  }
}
