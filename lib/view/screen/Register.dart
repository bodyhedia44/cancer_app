import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hope/view/screen/Login.dart';
import 'package:hope/view/widget/CommonPage/ActionButton.dart';
import 'package:hope/view/widget/CommonPage/Appbar_title.dart';
import 'package:hope/view/widget/CommonPage/Greeting_widget.dart';
import 'package:hope/view/widget/CommonPage/Widget_constants.dart';

import 'package:hope/view/screen/AdminHome.dart';
import 'package:hope/view/screen/DoctorHome.dart';
import 'package:hope/view/screen/PatientHome.dart';
import 'package:hope/view/screen/RadiologistHome.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey();
  String? initialValue;
  List<String> userType = ["Patient", "Doctor", "Radiologis", "admin"];
  final _auth = FirebaseAuth.instance;
  bool _loading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Sign Up'),
        backgroundColor: const Color.fromARGB(244, 250, 250, 250),
      ),
      backgroundColor: const Color(0xfff5e9e7),
      body: SafeArea(
          child: Center(
        child: _loading
            ? CircularProgressIndicator.adaptive()
            : Form(
                key: _key,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Hello again
                      const GreetingWidget(
                          greeting: 'Hello!',
                          message: 'Register below with your details!'),

                      Padding(
                        padding: padding25Horizontal(),
                        child: TextFormField(
                          validator: (text) {
                            if (text == "") {
                              return "Please Enter Email Address to Continue ";
                            }
                            if (!(text!.contains("@"))) {
                              return "Enter a Valid Email ID to Continue  ";
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

                      //password Textfield
                      Padding(
                        padding: padding25Horizontal(),
                        child: TextFormField(
                          validator: (text) {
                            if (text == "") {
                              return "Please enter a password  ";
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

                      //confirm password Textfield
                      Padding(
                        padding: padding25Horizontal(),
                        child: TextFormField(
                          validator: (text) {
                            if (text == "") {
                              return "Please enter a password  ";
                            }
                            if (text!.length <= 4) {
                              return "Password should contain more than 4 characters";
                            }

                            if (text != _confirmPasswordController.text) {
                              return "Password doesn't match";
                            }
                            return null;
                          },
                          obscureText: true,
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Confirm Password',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: padding25Horizontal(),
                        child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(children: [
                              const SizedBox(width: 10),
                              Expanded(
                                  child: DropdownButton<String>(
                                      dropdownColor: Colors.grey[200],
                                      isExpanded: true,
                                      underline: const Text(''),
                                      value: initialValue,
                                      hint: const Text('User Role'),
                                      items: userType.map((userTypeOptions) {
                                        return DropdownMenuItem<String>(
                                          value: userTypeOptions,
                                          child: Text(userTypeOptions),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          initialValue = value ?? "";
                                        });
                                      }))
                            ])),
                      ),
                      const SizedBox(height: 20),

                      //Sign in button
                      ActionButton(label: "Sign In", action: _submit),
                      const SizedBox(height: 5),

                      //not a member ? register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'I am member! ',
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
                                      builder: (ctx) => const LoginPage()));
                            },
                            child: const Text(
                              ' Login now',
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
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) {
        FirebaseFirestore.instance
            .collection("UserData")
            .doc(value.user!.uid)
            .set({"email": value.user!.email, "userType": initialValue}).then(
                (value) {
          if (initialValue == "Admin") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => AdminHomeScreen(userRole: initialValue!)));
          }
          if (initialValue == "Patient") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        PationtHomeScreen(userRole: initialValue!)));
          }
          if (initialValue == "Doctor") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => DoctorHomeScreen(userRole: initialValue!)));
          }
          if (initialValue == "Specialist") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) =>
                        RadiologistHomeScreen(userRole: initialValue!)));
          }
        });
      });
    } catch (e) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                content: Text(e.toString()),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ],
              ));

      return;
    }
    setState(() {
      _loading = false;
    });
  }
}
