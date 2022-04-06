import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:psvexpress/utility/DialogPopup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userName="";
  String password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFF8A2387),
                Color(0xFFE94057),
                Color(0xFFF27121),
              ])),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Image.asset(
                  "assets/images/myicon.ico",
                  width: 120,
                  height: 120,
                ),
                SizedBox(height: 10),
                Text(
                  "PSV express",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(height: 20),
                Container(
                  height: 380,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Please Login To Your Account",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 250,
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              userName = value.toString();
                            });
                          },
                          decoration: InputDecoration(
                            labelText: "User Name",
                            suffixIcon: Icon(
                              FontAwesomeIcons.user,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              password = value.toString();
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: Icon(
                              FontAwesomeIcons.eyeSlash,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.end,
                      //     children: [
                      //       Text(
                      //         "Forget Password",
                      //         style: TextStyle(
                      //           color: Colors.orangeAccent[700],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          print("userName=${userName},  password=${password}");
                          if (userName.isEmpty || userName == "") {
                            DialogFail(
                                context, "Notification!", "Login have error");
                          } else if (password.isEmpty || password == "") {
                            DialogFail(
                                context, "Notification!", "Login have error");
                          } else {
                            DialogSucessfull(
                                context, "Notification!", "Login have sucessfull");
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF8A2378),
                                  Color(0xFFE04057),
                                  Color(0xFFF27121),
                                ]),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
