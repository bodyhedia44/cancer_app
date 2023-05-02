import 'package:flutter/material.dart';

class RecoveryExercise1 extends StatelessWidget {
  final String title;
  const RecoveryExercise1({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 162, 195),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(0, 209, 120, 184),
          title: Text('Recovery exercise updating'),
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
      // body: RecoveryExerciseModification(
      //   title: 'RecoveryExercise',
      // ),
    ));
  }
}
