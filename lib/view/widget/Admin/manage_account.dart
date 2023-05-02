import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final String title;
  const Account({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 11),
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7f7f7f),
              ),
              onPressed: () {},
              child: Text("Doctor"),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: ElevatedButton(
              child: Text("pationt"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7f7f7f),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: ElevatedButton(
              child: Text("Radiologist"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7f7f7f),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
