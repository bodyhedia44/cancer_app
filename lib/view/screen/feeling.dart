import 'package:flutter/material.dart';
import 'package:hope/view/screen/SymptomTracker.dart';
import 'package:intl/intl.dart';

class FeelingPage extends StatelessWidget {
  FeelingPage({super.key});

  final DateTime currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 227, 229),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(244, 250, 250, 250),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset('assets/image/logo.png'),
            )
          ],
          centerTitle: true,
          title: const Text("Symptoms Tracker"),
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
          const CustomTextWidget(text: "Good Evening Layen"),
          const SizedBox(height: 10),
          const CustomTextWidget(
            text: "How are you feeling right now?",
            color: kPinkColor,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: Column(
                  children: [
                    Image.asset("assets/image/poor.png"),
                    const SizedBox(height: 5),
                    const CustomButton(
                      text: "Poor",
                      fontSize: 18,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      bgColor: Color.fromARGB(255, 235, 121, 112),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: Column(
                  children: [
                    Image.asset("assets/image/bad.png"),
                    const SizedBox(height: 5),
                    const CustomButton(
                      text: "Bad",
                      fontSize: 18,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      bgColor: Color.fromARGB(255, 235, 121, 112),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: Column(
                  children: [
                    Image.asset("assets/image/medicore.png"),
                    const SizedBox(height: 5),
                    const CustomButton(
                      text: "Medicore",
                      fontSize: 18,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      bgColor: Color.fromARGB(255, 235, 121, 112),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: Column(
                  children: [
                    Image.asset("assets/image/good.png"),
                    const SizedBox(height: 5),
                    const CustomButton(
                      text: "Good",
                      fontSize: 18,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      bgColor: Color.fromARGB(255, 235, 121, 112),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: Column(
                  children: [
                    Image.asset("assets/image/great.png"),
                    const SizedBox(height: 5),
                    const CustomButton(
                      text: "Great",
                      fontSize: 18,
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      bgColor: Color.fromARGB(255, 235, 121, 112),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(DateFormat("hh:mm a - MMMM dd , yyyy").format(currentTime)),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: const [
                Expanded(child: CustomButton(text: "Save")),
                SizedBox(width: 10),
                Expanded(child: CustomButton(text: "Save and Update")),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
