import 'package:acacos/screens/on_bording.dart';
import 'package:acacos/widgets/clickable_widgets/main_button.dart';
import 'package:acacos/widgets/clickable_widgets/place_card.dart';
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
  bool doneorskiped = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: !doneorskiped
          ? const OnBording()
          : Center(
              child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  placeCard(),
                  MainButton(Text: 'Text', withBorder: true, isLoading: true),
                  MainButton(
                    Text: 'Text',
                    withBorder: false,
                    isLoading: false,
                    widthFromScreen: 0.33,
                  ),
                  placeCard(),
                  placeCard(),
                  placeCard(),
                ],
              ),
            )),
    );
  }
}

// ClipRRect(
//                 borderRadius: BorderRadius.circular(20.0),

//                 // child: Image.asset('assets/blueLogo.png'),
//                 child: Image.network(
//                   'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/%D8%A7%D9%83%D8%A7%D9%83%D9%88%D8%B3_%D9%84%D9%8A%D8%A8%D9%8A%D8%A7_%D8%A8%D8%B9%D8%AF%D8%B3%D8%A9_%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2_%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D9%8A.jpg/261px-%D8%A7%D9%83%D8%A7%D9%83%D9%88%D8%B3_%D9%84%D9%8A%D8%A8%D9%8A%D8%A7_%D8%A8%D8%B9%D8%AF%D8%B3%D8%A9_%D8%B9%D8%A8%D8%AF%D8%A7%D9%84%D8%B9%D8%B2%D9%8A%D8%B2_%D8%A7%D9%84%D9%85%D9%86%D8%B5%D9%88%D8%B1%D9%8A.jpg',
//                   width: size.width,
//                   fit: BoxFit.contain,
//                 ),
//               )
