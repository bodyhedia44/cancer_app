import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hope/view/screen/Forgot.dart';
import 'package:hope/view/screen/Register.dart';
import 'package:hope/view/widget/CommonPage/Appbar_title.dart';
import 'package:hope/view/widget/CommonPage/Greeting_widget.dart';
import 'package:hope/view/widget/CommonPage/Widget_constants.dart';
import '../widget/CommonPage/ActionButton.dart';
import 'package:hope/view/screen/AdminHome.dart';
import 'package:hope/view/screen/DoctorHome.dart';
import 'package:hope/view/screen/PatientHome.dart';
import 'package:hope/view/screen/RadiologistHome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey();
  final _auth = FirebaseAuth.instance;
  final fireStoreInstance = FirebaseFirestore.instance;
  bool _loading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(244, 250, 250, 250),
        centerTitle: true,
        title: const AppBarTitle(title: 'Sign In'),
      ),
      backgroundColor: const Color(0xfff5e9e7),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: _loading
              ? CircularProgressIndicator.adaptive()
              : Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const GreetingWidget(
                          greeting: 'Hello Again!',
                          message: 'Welcome back, you\'ve been missed!'),
                      const SizedBox(height: 30),

                      //email TextField
                      Padding(
                        padding: padding25Horizontal(),
                        child: TextFormField(
                          validator: (text) {
                            if (text == "") {
                              return "Please Enter Email Address to Continue ";
                            }
                            if (!(text!.contains("@"))) {
                              return "Enter a Valid Email ID to Continue ";
                            }
                            return null;
                          },
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Email',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      //password TextField
                      Padding(
                        padding: padding25Horizontal(),
                        child: TextFormField(
                          validator: (text) {
                            if (text == "") {
                              return "Please Enter a Password  ";
                            }
                            if (text!.length <= 4) {
                              return "Password should contain more than 4 characters";
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Password',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      Padding(
                        padding: padding25Horizontal(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => const ForgotPage()));
                              },
                              child: const Text(
                                'Forgot Password? ',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      //Sign in button
                      ActionButton(
                        label: "Sign In",
                        action: _submit,
                      ),
                      const SizedBox(height: 5),

                      //not a member ? register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Not a member? ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 82, 80, 80),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const RegisterPage()));
                            },
                            child: const Text(
                              ' Register Now',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
        ),
      )),
    );
  }

  Future<void> _submit() async {
    if (!_key.currentState!.validate()) {
      return;
    }
    _key.currentState!.save();
    setState(() {
      _loading = true;
    });
    try {
      await _auth
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) {
        fireStoreInstance
            .collection("UserData")
            .doc(value.user!.uid)
            .get()
            .then((value) {
          var userType = value.data();
          print(userType);
          if (userType!["userType"] == "Admin") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        AdminHomeScreen(userRole: userType["userType"]!)));
          }
          if (userType["userType"] == "Patient") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        PationtHomeScreen(userRole: userType["userType"]!)));
          }
          if (userType["userType"] == "Doctor") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        DoctorHomeScreen(userRole: userType["userType"]!)));
          }
          if (userType["userType"] == "Specialist") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => RadiologistHomeScreen(
                        userRole: userType["userType"]!)));
          }
        });
      });
    } catch (e) {
      setState(() {
        _loading = false;
      });
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                backgroundColor: Colors.grey[200],
                content: Text(e.toString()),
                actions: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 82, 80, 80))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ],
              ));
      return;
    }
  }
}
