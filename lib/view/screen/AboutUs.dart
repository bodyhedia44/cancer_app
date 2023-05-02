// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Application name
//       title: 'About Us Page',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       home: MyHomePage(title: 'About Us Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   final String title;
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
// drawer: Drawer(
//   child: ListView(
//     children: <Widget>[
//       ListTile(
//         onTap: () {
//           aboutMyApp();
//         },
//         title: Text('About Us'),
//       )
//     ],
//   ),
// ),
//     body: Center(
//       child: Text(
//           'Thanks for using HOPE (Breast Cancer Detection System) A medical Software that provides essential information about Breast Cancer and its related issues. About HOPE: Hope is based on our original work which done by 5 IAU students: Fatemah M. Alsaeed, Lujain A. Alshaer, Layla M. Al Homoud, Zainab H. Al Ibrahim, Zainab M Alawami,  and supervised by Mrs. Hanoof Algofari , lecturers of CCSIT college.This project work is submitted in the partial fulfillment of the requirements for the degree of “Bachelor of Science in Computer Science” at Computer Science Department, College of Computer Sciences and Information Technology, Imam AbdulRahman Bin Faisal University. The reasons to develop HOPE: Among both industrialized and developing nations, breast cancer is one of the most common cancers in women. Doctors and medical professionals must put in a great deal of work to identify the cancer and determine if it is benign or malignant. Computer-based solutions for diagnostics are widely employed for the diseases that claim many lives. The right classification in identifying whether the tumor is benign or malignant may save lives. Therefore, the need for accurate classification inside the clinic may be the cause of the doctors and specialists great anxiety. Since scientists first realized the value of making constrained decisions to cure particular diseases, the importance of artificial intelligence has grown significantly during the previous 25 years. One of the most important diseases in medicine where the classification problem plays a really important part is that of breast cancer diagnosis, where the use of machine learning and data processing as tools for diagnosis becomes incredibly effective. Therefore, machine learning algorithms will help medical professionals in accurately identifying breast cancer and classifying tumors as benign or malignant.'),
//     ),
//   );
// }

//   void aboutMyApp() {
//     showAboutDialog(
//       context: context,
//       applicationIcon: FlutterLogo(),
//       applicationName: 'About Hope App',
//       applicationVersion: '0.0.1',
//       applicationLegalese: 'Developed by IAU students',
//       children: <Widget>[
//         Text(
//             'Thanks for using HOPE (Breast Cancer Detection System) A medical Software that provides essential information about Breast Cancer and its related issues. About HOPE: Hope is based on our original work which done by 5 IAU students: Fatemah M. Alsaeed, Lujain A. Alshaer, Layla M. Al Homoud, Zainab H. Al Ibrahim, Zainab M Alawami,  and supervised by Mrs. Hanoof Algofari , lecturers of CCSIT college.This project work is submitted in the partial fulfillment of the requirements for the degree of “Bachelor of Science in Computer Science” at Computer Science Department, College of Computer Sciences and Information Technology, Imam AbdulRahman Bin Faisal University. The reasons to develop HOPE: Among both industrialized and developing nations, breast cancer is one of the most common cancers in women. Doctors and medical professionals must put in a great deal of work to identify the cancer and determine if it is benign or malignant. Computer-based solutions for diagnostics are widely employed for the diseases that claim many lives. The right classification in identifying whether the tumor is benign or malignant may save lives. Therefore, the need for accurate classification inside the clinic may be the cause of the doctors and specialists great anxiety. Since scientists first realized the value of making constrained decisions to cure particular diseases, the importance of artificial intelligence has grown significantly during the previous 25 years. One of the most important diseases in medicine where the classification problem plays a really important part is that of breast cancer diagnosis, where the use of machine learning and data processing as tools for diagnosis becomes incredibly effective. Therefore, machine learning algorithms will help medical professionals in accurately identifying breast cancer and classifying tumors as benign or malignant.'),
//       ],
//     );
//   }

//   RaisedButton({required Text child, required void Function() onPressed}) {}
// }

import 'package:flutter/material.dart';
import 'package:hope/view/widget/CommonPage/Appbar_title.dart';

class AboutUs extends StatelessWidget {
  final String title;
  const AboutUs({Key? key, required this.title}) : super(key: key);
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
          title: const Text("About us"),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
          child: Text(
            'Thanks for using HOPE (Breast Cancer Detection System) A medical Software that provides essential information about Breast Cancer and its related issues. About HOPE: Hope is based on our original work which done by 5 IAU students: Fatemah M. Alsaeed, Lujain A. Alshaer, Layla M. Al Homoud, Zainab H. Al Ibrahim, Zainab M Alawami,  and supervised by Mrs. Hanoof Algofari , lecturers of CCSIT college.This project work is submitted in the partial fulfillment of the requirements for the degree of “Bachelor of Science in Computer Science” at Computer Science Department, College of Computer Sciences and Information Technology, Imam AbdulRahman Bin Faisal University. The reasons to develop HOPE: Among both industrialized and developing nations, breast cancer is one of the most common cancers in women. Doctors and medical professionals must put in a great deal of work to identify the cancer and determine if it is benign or malignant. Computer-based solutions for diagnostics are widely employed for the diseases that claim many lives. The right classification in identifying whether the tumor is benign or malignant may save lives. Therefore, the need for accurate classification inside the clinic may be the cause of the doctors and specialists great anxiety. Since scientists first realized the value of making constrained decisions to cure particular diseases, the importance of artificial intelligence has grown significantly during the previous 25 years. One of the most important diseases in medicine where the classification problem plays a really important part is that of breast cancer diagnosis, where the use of machine learning and data processing as tools for diagnosis becomes incredibly effective. Therefore, machine learning algorithms will help medical professionals in accurately identifying breast cancer and classifying tumors as benign or malignant.',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
      ),
    ));
  }
}
