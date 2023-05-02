import 'package:flutter/material.dart';
import 'package:hope/core/constant/color.dart';
import 'package:hope/view/screen/SymptomTracker.dart';
import 'package:hope/view/widget/CommonPage/Appbar_title.dart';
import '../widget/CommonPage/help.dart';

class AddMammogram extends StatelessWidget {
  final String title;
  const AddMammogram({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xfff5e9e7),
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(244, 250, 250, 250),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset('assets/image/logo.png'),
                  )
                ],
                centerTitle: true,
                title: const Text("add a mammogram for patient"),
                titleTextStyle: const TextStyle(
                  color: Color.fromRGBO(236, 173, 185, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    //i have to change direction
                    color: Colors.black54,
                  ),
                )),
            body: Column(
              children: [
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                const CustomTextWidget(text: "add a mammogram"),
                const SizedBox(height: 10),
                // const CustomTextWidget(
                //   text: "How are you feeling right now?",
                //   color: AppColor.kPinkColor,
                // ),
                const SizedBox(height: 30),
              ],
            )));
  }
}
