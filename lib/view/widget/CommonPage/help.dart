import 'package:flutter/material.dart';

class HelpWedget extends StatelessWidget {
  const HelpWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton.icon(
              icon: Icon(Icons.phone),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: const Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (cpntext) => const page4()));
              },
              label: Text("call us- +966 12 345 5679"),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 280,
            height: 60,
            child: ElevatedButton.icon(
              icon: Icon(Icons.email),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: const Color.fromARGB(255, 161, 164, 164),
              ),
              onPressed: () {},
              label: Text("Text us- Hope@gmail.com"),
            ),
          ),
        ],
      ),
    );
  }
}
