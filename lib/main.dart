import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom.dart';
import 'package:ticket_booking/utills/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomBar(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
    );
  }
}
