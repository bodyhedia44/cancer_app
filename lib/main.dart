import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hope/view/screen/Onboarding.dart';
import 'package:hope/view/screen/admin/ManageAccount.dart';
import 'package:hope/view/screen/admin/RecoveryExerciseModification.dart';
import 'package:hope/view/screen/admin/Try.dart';
import 'package:hope/view/screen/tfliteModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TfliteModel());
  }
}
