import 'package:flutter/material.dart';

const Color kPinkColor = Color.fromRGBO(236, 173, 185, 1);

class SymptomTrackerPage extends StatefulWidget {
  const SymptomTrackerPage({super.key});

  @override
  State<SymptomTrackerPage> createState() => _SymptomTrackerPageState();
}

class _SymptomTrackerPageState extends State<SymptomTrackerPage> {
  double anxietySliderValue = 2.5;

  double painSliderValue = 2.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 233, 232),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add_circle_rounded,
                color: Colors.black38,
              ),
              SizedBox(width: 10),
              CustomTextWidget(
                text: "Add a Symptom",
              ),
            ],
          ),
          const SizedBox(height: 30),
          SliderWidget(
            sliderValue: anxietySliderValue,
            text: "Anxiety",
          ),
          const SizedBox(height: 10),
          SliderWidget(
            sliderValue: painSliderValue,
            text: "Pain",
          ),
          const Spacer(),
          const CustomButton(
            text: "Save these Symptoms",
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.bgColor = Colors.black26,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.fontSize = 15,
    this.onTap,
  });
  final String text;
  final Color bgColor;
  final Function()? onTap;
  final EdgeInsets padding;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: bgColor),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: fontSize),
        ),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  SliderWidget({super.key, required this.sliderValue, required this.text});
  double sliderValue;
  final String text;
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: widget.text,
          color: kPinkColor,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
            children: [
              const CustomTextWidget(
                text: "non",
                fontWeight: FontWeight.w400,
              ),
              Slider(
                value: widget.sliderValue,
                min: 0,
                max: 5,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    widget.sliderValue = value;
                  });
                },
              ),
              const CustomTextWidget(
                text: "sever",
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    this.color = Colors.black45,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
  });

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
