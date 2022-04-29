import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:psvexpress/screens/HomePage.dart';
import '../../../utility/Constants.dart';
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
        backgroundColor: Colors.deepOrange,
        primaryColor: Colors.deepOrange,
      ),
      // home: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(
      //       create: (context) => MenuController(),
      //     ),
      //   ],
      //   child: MainScreen(),
      // ),
      //home: Login(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: HomePage(),
      ),
      //home: MainScreen(),
    );
  }
}
