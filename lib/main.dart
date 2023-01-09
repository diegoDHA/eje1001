import 'package:firebase_core/firebase_core.dart';
import 'application/use_cases/frmPrincipal.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cambio 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: frmPrincipal(),
    );
  }
}
