import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  login() async {}

  Widget _inputLogin(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(80.0, 15.0, 80.0, 0.0),
      child: TextFormField(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 14.0),
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(13.0),
            ),
          ),
          controller: controller),
    );
  }

  @override
  Widget build(BuildContext context) {
    final myController = new TextEditingController();
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Card(
        margin: const EdgeInsets.only(top: 25.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: height * 0.12,
            ),
            Center(
              child: Text('Đăng nhập',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.lightBlueAccent[400],
                  )),
            ),
            SizedBox(
              height: 30.0,
            ),
            _inputLogin(myController, 'Tên đăng nhập'),
            _inputLogin(myController, 'Mật khẩu'),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: new Padding(
                    padding: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                    child: ButtonTheme(
                      height: 45.0,
                      child: RaisedButton(
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlueAccent[400],
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/index');
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: new Padding(
                    padding: const EdgeInsets.fromLTRB(80.0, 10.0, 5.0, 0.0),
                    child: ButtonTheme(
                      height: 45.0,
                      child: RaisedButton(
                        child: const Text(
                          'Đăng kí',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlueAccent[400],
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        onPressed: () {
                          login();
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: new Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 10.0, 80.0, 0.0),
                    child: ButtonTheme(
                      height: 45.0,
                      child: RaisedButton(
                        child: const Text(
                          'Quên mật khẩu',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.lightBlueAccent[400],
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        onPressed: () {
                          login();
                        },
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
