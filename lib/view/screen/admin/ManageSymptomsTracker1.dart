import 'package:flutter/material.dart';

class ManageSymptomsTracker1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 226, 162, 195),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(0, 209, 120, 184),
            title: Text('Manage Symptoms Tracker'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                //i have to change direction
                color: Colors.white,
              ),

              // do something
            )),
        body: ManageSymptomsTracker1(),
      ),
    );
  }
}
