import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:psvexpress/models/UserLoginModel.dart';
import 'package:psvexpress/models/UserModel.dart';
import 'package:psvexpress/screens/HomePage.dart';
import '../../../utility/Constants.dart';
import 'package:psvexpress/controllers/MenuController.dart';
import 'package:psvexpress/screens/Authen/Login.dart';
import 'package:psvexpress/screens/main/MainScreen.dart';

void main() {
  runApp(MyApp());
}

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => HomePage(),
  '/login': (BuildContext context) => Login(),
};

String initialRoute = '/login';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserModel>(create: (context) => UserModel()),
        Provider<UserLoginModel>(create: (context) => UserLoginModel()),
      ],
      child: MaterialApp(
        routes: map,
        initialRoute: initialRoute,
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
        home: Login(),
      ),
    );
  }
}
