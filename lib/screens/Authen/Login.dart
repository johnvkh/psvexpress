import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:psvexpress/controllers/MenuController.dart';
import 'package:psvexpress/models/UserModel.dart';
import 'package:psvexpress/screens/dashboard/dashboard_screen.dart';
import 'package:psvexpress/screens/main/MainScreen.dart';
import 'package:psvexpress/screens/HomePage.dart';
import 'package:psvexpress/utility/DialogPopup.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

import '../../models/UserLoginModel.dart';
import '../../utility/Constants.dart';
import '../../utility/ResponceCode.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userName = "";
  String password = "";
  late UserModel userModel;
  late UserLoginModel _userLoginModel;
  bool loadProcessBar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: context.read<MenuController>().scaffoldKey,
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
            child: loadProcessBar
                ? SingleChildScrollView(
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
                                  setState(() {
                                    loadProcessBar = false;
                                  });
                                  print(
                                      "userName=${userName},  password=${password}");
                                  if (userName.isEmpty || userName == "") {
                                    DialogFail(context, "Notification!",
                                        "User name incorrect pleace try again!!!");
                                  } else if (password.isEmpty ||
                                      password == "") {
                                    DialogFail(context, "Notification!",
                                        "Password incorrect pleace try again!!!");
                                  } else {
                                    evenLogin(userName, password);
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
                  )
                : Center(
                    child: Lottie.asset("assets/lottie/loading.json",
                        width: 100, height: 100),
                  )),
      ),
    );
  }

  Future<Null> evenLogin(String userName, String password) async {
    DateTime now = DateTime.now();
    String transTime = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(now);
    print("transTime=${transTime}");
    String signatureStr = "${userName}${transTime}";
    print("signatureStr=${signatureStr}");
    String md5Encode = md5.convert(utf8.encode(signatureStr)).toString();
    print("md5Encode=${md5Encode}");
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String signature = stringToBase64.encode(md5Encode);
    print("signature=${signature}");
    var url = Uri.parse('${API_URL}/api/login/index.php');
    print("url=${url}");
    var response = await http.post(
      url,
      body: json.encode({
        "user_name": "${userName}",
        "password": "${password}",
        "trans_time": "${transTime}",
        "signature": "${signature}"
      }),
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${jsonDecode(response.body)}');
    var respData = json.decode(response.body);
    print("extractedData['list']=${respData['list']}");
    for (var map in respData['list']) {
      setState(() {
        userModel = UserModel.fromJson(map);
        _userLoginModel.userName ="john";
      });
    }
    print("userName=${_userLoginModel.userName}");
    if (respData['response_code'] == SUCESSFUL) {
      setState(() {
        loadProcessBar = true;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      // MaterialPageRoute route = MaterialPageRoute(builder: (context) => TEST());
      // Navigator.pushAndRemoveUntil(context, route, (route) => false);
    } else {
      setState(() {
        loadProcessBar = true;
      });
      DialogFail(context, "Notification!", "system error pleace try again!!!");
    }
  }
}
