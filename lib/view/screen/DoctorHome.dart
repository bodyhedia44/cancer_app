import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hope/view/screen/AboutUs.dart';
import 'package:hope/view/screen/Examinations.dart';
import 'package:hope/view/screen/Help.dart';
import 'package:hope/view/screen/LiveChat/chatpage.dart';
import 'package:hope/view/screen/RecoveryExercise.dart';
import 'package:hope/view/screen/SymptomTracker.dart';
import 'package:hope/view/screen/Test.dart';
import 'package:hope/view/screen/feeling.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Login.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({Key? key, required this.userRole}) : super(key: key);
  final String userRole;

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
          iconTheme: IconThemeData(
            color: const Color(0xff7f7f7f),
          ),
          centerTitle: true,
          title: const Text("Home Screen"),
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(236, 173, 185, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Icon(
                  size: 48.0,
                  CupertinoIcons.person,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff7f7f7f),
                ),
              ),
              // ListTile(
              //     leading: Icon(size: 28.0, Icons.input),
              //     title: Text('Welcome'),
              //     onTap: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const PationtHomeScreen(
              //                   userRole: 'Pationt',
              //                 )),
              //       );
              //     }),

              ListTile(
                  leading: Icon(size: 28.0, Icons.text_snippet),
                  title: Text('Brest cancer test'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Quiz()),
                    );
                  }),
              ListTile(
                  leading: Icon(size: 28.0, Icons.monitor_weight_rounded),
                  title: Text('Examination method'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Examination()),
                    );
                  }),
              ListTile(
                  leading: Icon(size: 28.0, Icons.feedback),
                  title: Text('Recovry exercise'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecoveryExercise()),
                    );
                  }),
              ListTile(
                  leading: Icon(size: 28.0, Icons.recommend),
                  title: Text('Symptoms Tracker'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeelingPage()),
                    );
                  }),
              ListTile(
                  leading: Icon(size: 28.0, Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  }),
            ],
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          //  Expanded(
          //  child: Container(
          //   color: Color.fromARGB(255, 231, 218, 215),
          //   width: 300.0,
          //   height: 500.0,
          //  ),
          Expanded(
            child: Image.asset('assets/image/logo.png'),
          ),
          Expanded(
              child: Text(
            "Welcome to $userRole Screen",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35),
          )),
        ]),
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(244, 250, 250, 250),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18),
                child: GNav(
                    backgroundColor: const Color.fromARGB(244, 250, 250, 250),
                    color: Colors.grey,
                    activeColor: Colors.grey,
                    tabBackgroundColor: Colors.grey.shade800,
                    gap: 8,
                    onTabChange: (index) {
                      print(index);
                    },
                    padding: EdgeInsets.all(16),
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                        // onPressed: () async {
                        //   await FirebaseAuth.instance
                        //       .signOut()
                        //       .then((value) => Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (_) => (
                        //                     title: '',
                        //                   ))));
                        // },
                      ),
                      GButton(
                        icon: Icons.help,
                        text: 'Help',
                        onPressed: () async {
                          await FirebaseAuth.instance
                              .signOut()
                              .then((value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Help(
                                            title: 'Help',
                                          ))));
                        },
                      ),
                      GButton(
                        icon: Icons.chat,
                        text: 'Live chat',
                        onPressed: () async {
                          await FirebaseAuth.instance
                              .signOut()
                              .then((value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => chatpage(
                                            email: '',
                                          ))));
                        },
                      ),
                      GButton(
                        icon: Icons.contact_emergency,
                        text: 'About us',
                        onPressed: () async {
                          await FirebaseAuth.instance
                              .signOut()
                              .then((value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => AboutUs(
                                            title: 'AboutUs',
                                          ))));
                        },
                      )
                    ]))));
  }
}
