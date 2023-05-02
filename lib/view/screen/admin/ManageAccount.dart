import 'package:flutter/material.dart';
import 'package:hope/view/screen/admin/Try.dart';

import '../../widget/Admin/manage_account.dart';

class ManageAccount extends StatelessWidget {
  const ManageAccount({super.key});

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
          title: const Text("Manage account"),
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
      body: HomePage(),
    ));
  }
}
