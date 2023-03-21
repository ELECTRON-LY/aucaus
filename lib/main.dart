import 'package:acacos/helpers/colors.dart';
import 'package:acacos/screens/auth_screens/splash_screen.dart';
import 'package:acacos/screens/login.dart';
import 'package:acacos/screens/on_bording.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool doneorskiped = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.cairoTextTheme(),
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: mainColor,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: mainColor),
            titleTextStyle: const TextStyle(color: Colors.black),
          ),
        ),
        home: const Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()));
  }
}