import 'package:flutter/material.dart';

class InputText extends StatelessWidget {

  InputText({Key key, this.label, this.controller});

  final String label;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {


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
}
