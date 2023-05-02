import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hope/core/constant/color.dart';

class Answer extends StatelessWidget {
  Answer({super.key, required this.value, required this.press});
  final String value;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: press,
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                color: const Color(0xff7f7f7f),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
              ),
            )),
          ),
        ));
  }
}
