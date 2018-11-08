import 'package:flutter/material.dart';
import 'package:myapp/common/component.dart';
import 'package:myapp/common/date-time-picker.dart';
import 'package:myapp/common/drawer.dart';
import 'package:flutter/cupertino.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen({Key key}) : super(key: key);

  @override
  _IndexPage createState() => _IndexPage();
}

class _IndexPage extends State<IndexScreen> {
  TimeOfDay time = new TimeOfDay.now();

  TextEditingController controller;

  DateTime _fromDate = DateTime.now();
  TimeOfDay _fromTime = const TimeOfDay(hour: 7, minute: 28);
  DateTime _toDate = DateTime.now();
  TimeOfDay _toTime = const TimeOfDay(hour: 7, minute: 28);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(title: Text('title')),
        body: ListView(children: <Widget>[
          InputText(
            label: '${time.toString()}',
            controller: controller,
          ),
          RaisedButton(
            child: new Icon(Icons.watch),
            onPressed: () =>
                showTimePicker(context: context, initialTime: time),
          ),
          DateTimePicker(
            labelText: 'To',
            selectedDate: _toDate,
            selectedTime: _toTime,
            selectDate: (DateTime date) {
              setState(() {
                _toDate = date;
              });
            },
            selectTime: (TimeOfDay time) {
              setState(() {
                _toTime = time;
              });
            },
          ),
        ]),
        drawer: DrawerPage(),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.date_range),
          onPressed: () => showDatePicker(
                context: context,
                initialDate: new DateTime.now(),
                firstDate: new DateTime.now().subtract(new Duration(days: 30)),
                lastDate: new DateTime.now().add(new Duration(days: 30)),
              ),
        ),
      ),
    );
  }
}
