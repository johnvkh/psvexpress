import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:psvexpress/constants.dart';
import 'package:psvexpress/controllers/MenuController.dart';
import 'package:psvexpress/screens/Authen/Login.dart';
import 'package:psvexpress/screens/main/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: bgColor,
      //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      //       .apply(bodyColor: Colors.black87),
      //   canvasColor: secondaryColor,
      // ),
      theme: ThemeData(
        primaryColor: Colors.purple
      ),
      // home: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(
      //       create: (context) => MenuController(),
      //     ),
      //   ],
      //   child: MainScreen(),
      // ),
      home: Login(),
    );
  }
}
