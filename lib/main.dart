import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/Screens/Home_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payment App',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
