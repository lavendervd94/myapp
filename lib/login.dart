import 'package:flutter/material.dart';
import 'package:myapp/index.dart';

class LoginScreen extends StatelessWidget {

  login() async {}

  Widget _inputLogin(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(80.0, 15.0, 80.0, 0.0),
      child: TextFormField(
          style: TextStyle(height: 1.0, color: Colors.black, fontSize: 15.0),
          decoration: InputDecoration(
            labelText: label,
            contentPadding: const EdgeInsets.all(12.0),
            labelStyle: TextStyle(fontSize: 15.0),
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
    final colorCustom = Colors.lightBlueAccent[700];
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                  backgroundColor: colorCustom,
                  title: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: 'Đăng nhập', icon: Icon(Icons.person)),
                      Tab(text: 'Đăng ký', icon: Icon(Icons.create))
                    ],
                  )),
              body: TabBarView(
                children: <Widget>[
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.12,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/logo.png',
                          height: 90.0,
                          width: 90.0,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      _inputLogin(myController, 'Tên đăng nhập'),
                      _inputLogin(myController, 'Mật khẩu'),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: new Padding(
                              padding:
                                  EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                              child: ButtonTheme(
                                height: 40.0,
                                child: RaisedButton(
                                  child: Text(
                                    'Đăng nhập',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0),
                                  ),
                                  color: colorCustom,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(13.0)),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => IndexScreen()),
                                    );
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: new InkWell(
                            child: new Text(
                          'Quên mật khẩu',
                          style: TextStyle(fontSize: 15.0, color: colorCustom),
                        )),
                      )
                    ],
                  ),
                  new Text('data'),
                ],
              ),
            )));
  }
}
