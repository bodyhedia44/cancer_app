import 'package:flutter/material.dart';
import 'package:hope/core/constant/color.dart';
import 'package:hope/view/widget/CommonPage/Appbar_title.dart';

class RecoveryExercise extends StatelessWidget {
  const RecoveryExercise({super.key});

  //const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: const Text("Recovery Exercises"),
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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => const page2()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                child: const Text("Preparing for the surgery exercises"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => const page3()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                child: const Text("Before the surgery exercises"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => const page4()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                child: const Text("After the surgery exercises"),
              ),
            ),
          ],
          /*Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (cpntext) => const page2()));
          },
          child: const Text("Move to page 2"),
        ),
        
      ),*/
        ),
      ),
    );
  }
}

// Preparing for the surgery exercises
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Preparing for the surgery exercises.',
        theme: ThemeData(
          primaryColor: Color.fromARGB(244, 250, 250, 250),
        ),
        home: Scaffold(
            backgroundColor: const Color(0xfff5e9e7),
            appBar: AppBar(
              title: AppBarTitle(title: "Preparing for the surgery exercises"),
              backgroundColor: const Color.fromARGB(244, 250, 250, 250),
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: const Color(0xff7f7f7f),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Image(image: AssetImage('assets/image/RE-1.png')),
                Image(image: AssetImage('assets/image/RE-2.png')),
                Image(image: AssetImage('assets/image/RE-3.png')),
                Image(image: AssetImage('assets/image/RE-4.png')),
                Image(image: AssetImage('assets/image/RE-5.png')),
                Image(image: AssetImage('assets/image/RE-6.png')),
                Image(image: AssetImage('assets/image/preparing.webp')),
              ],
            )));
  }
}

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Before the surgery exercises.',
        theme: ThemeData(
          primaryColor: Color.fromARGB(244, 250, 250, 250),
        ),
        home: Scaffold(
            backgroundColor: const Color(0xfff5e9e7),
            appBar: AppBar(
              title: AppBarTitle(title: "Before the surgery exercises"),
              backgroundColor: const Color.fromARGB(244, 250, 250, 250),
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: const Color(0xff7f7f7f),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Image(image: AssetImage('assets/image/RE-a.png')),
                Image(image: AssetImage('assets/image/RE-b.png')),
                Image(image: AssetImage('assets/image/RE-c.png')),
                Image(image: AssetImage('assets/image/RE-d.png')),
                //Image(image: AssetImage('assets/images/preparing.webp')),
              ],
            )));
  }
}

//After the surgery exercises
class page4 extends StatelessWidget {
  const page4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'After the surgery exercises.',
        theme: ThemeData(),
        home: Scaffold(
            backgroundColor: const Color(0xfff5e9e7),
            appBar: AppBar(
              title: AppBarTitle(title: "After the surgery exercises"),
              backgroundColor: const Color.fromARGB(244, 250, 250, 250),
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: const Color(0xff7f7f7f),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: const [
                Image(image: AssetImage('assets/image/RE-y.png')),
                Image(image: AssetImage('assets/image/RE-z.png')),
                //Image(image: AssetImage('assets/images/preparing.webp')),
              ],
            )));
  }
}

/*class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Page2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Move to page 2"),
        ),
      ),
    );
  }
}
*/