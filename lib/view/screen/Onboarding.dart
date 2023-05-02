import 'package:flutter/material.dart';
import 'package:hope/Models/landing_page_helper.dart';
import 'package:hope/view/screen/Login.dart';
import 'package:hope/view/widget/CommonPage/ActionButton.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;
  final List<PageInfo> content = PageInfoData().data;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff5e9e7),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              //TODO: IF YOU WANT TO ENABLE DRAG SCROLL FEATURE REMOVE THIS BELOW physics PROPERTY
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              itemCount: content.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: mediaQuery.height * 0.35,
                      width: double.infinity,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(content[i].imageUrl)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.center,
                        color: const Color(0xfff3e5e3),
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              content[i].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      content[i].message.isEmpty ? 30 : 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: mediaQuery.height * 0.03,
                            ),
                            if (content[i].message.isNotEmpty)
                              Text(
                                content[i].message,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ActionButton(
                label:
                    currentIndex == content.length - 1 ? "GET STARTED" : "NEXT",
                action: () {
                  if (currentIndex == content.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ),
                    );
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                }),
          ),
          SizedBox(
            height: mediaQuery.height * 0.05,
          ),
        ],
      ),
    );
  }

  buildDot(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.black87,
        child: CircleAvatar(
          radius: 8,
          backgroundColor: const Color(0xfff5e9e7),
          child: currentIndex == index
              ? CircleAvatar(radius: 5, backgroundColor: Colors.black87)
              : null,
        ),
      ),
    );
  }
}
//Container(
//       height: 10,
//       width: currentIndex == index ? 25 : 10,
//       margin: EdgeInsets.only(right: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.black,
//       ),
//     );