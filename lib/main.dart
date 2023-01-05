import 'package:flutter/material.dart';
import 'package:flutter_peacedev/pages/pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color.fromRGBO(36, 206, 158, 1)),
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}
