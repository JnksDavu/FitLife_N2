import 'package:flutter/material.dart';
import 'package:gamestellar/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gamestellar/firebase_options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'firebase_options.dart';
import 'package:gamestellar/Exercicios.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitLife',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Color.fromARGB(255, 223, 223, 223), // Escolha a cor que você deseja
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        'app': (context) => const LoginPage(),
      },
    );
  }
}
