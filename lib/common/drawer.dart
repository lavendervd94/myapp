import 'package:flutter/material.dart';
import 'package:myapp/login.dart';

class DrawerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new AssetImage(
                                        "assets/avatar.jpg")))),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.0, left: 10.0),
                          child: ListView(
                            children: <Widget>[
                              Text('Nguyen Viet Dung',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0)),
                              SizedBox(height: 5.0),
                              Text('Quan tri vien',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          new AssetImage("assets/paper.jpg"))),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Đăng xuất'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      );
  }
}
