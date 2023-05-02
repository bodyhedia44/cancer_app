import 'package:flutter/material.dart';

class ManageSymptomsTracker2 extends StatelessWidget {
  final String title;
  const ManageSymptomsTracker2({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 280,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: Text("Anxiety"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          SizedBox(
            width: 280,
            height: 45,
            child: ElevatedButton(
              child: Text("Pain"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          SizedBox(
            width: 280,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: Text("Nauses"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          SizedBox(
            width: 280,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: Text("Dizzines"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          SizedBox(
            width: 280,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: Text("Voimting"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.grey,
                onPressed: () {
                  // Perform some action when the button is pressed
                },
              ),
              Text('Add more Symptoms'),
            ],
          ),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              child: Text("save updatse"),
            ),
          ),
        ],
      ),
    );
  }
}
