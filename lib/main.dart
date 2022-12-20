import 'package:flutter/material.dart';
import 'package:tikiz/Pages/HomeScreen.dart';
import 'package:tikiz/Pages/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tikiz/firebase_options.dart';
import 'package:tikiz/route/routes.dart';
import 'package:tikiz/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: approutes,
      theme: apptheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
