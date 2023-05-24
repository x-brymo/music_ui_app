import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_ui_app/core/utils/size.dart';
import 'package:music_ui_app/musice-app/gui/views/register/register.dart';

import '../select actor/Actor_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var sized = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0E0B1E),
      body: SingleChildScrollView(
          child: Form(
        key: formkey,
        child: Stack(children: [
          Image.asset(
            "asset/image/background-login.png",
            width: sized.width,
            height: sized.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              153.geth,
              Image.asset("asset/image/logo-app.png"),
              25.geth,
              Text("Song Chimp",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                  )),
              25.geth,
              Text(
                "Login",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
              25.geth,
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      fillColor: Color(0x00000000),
                      filled: true,
                      prefixIcon: Icon(Icons.e_mobiledata_rounded),
                      hintText: "Enter Number Phone",
                      hintStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.2, color: Color(0xffFFFFFF)),
                          borderRadius: BorderRadius.circular(4)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.2, color: Color(0xffFFFFFF)),
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              25.geth,
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      fillColor: Color(0x00000000),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.e_mobiledata_rounded,
                        color: Color(0xffFFFFFF),
                      ),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.2, color: Color(0xffFFFFFF)),
                          borderRadius: BorderRadius.circular(4)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.2, color: Color(0xffFFFFFF)),
                          borderRadius: BorderRadius.circular(4))),
                ),
              ),
              25.geth,
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => ActorScreen()));
                  },
                  minWidth: double.infinity,
                  height: 50,
                  color: 0xffFE2851.getC,
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
              15.geth,
              GestureDetector(
                child: Text(
                  "ForgettingPassword?",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
              ),
              15.geth,
              Center(
                child: Text(
                  "OR",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
              ),
              25.geth,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  5.getw,
                  GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: 0xffFE2851.getC,
                    ),
                    onTap: () {},
                  ),
                  15.getw,
                  GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: 0xffFE2851.getC,
                    ),
                    onTap: () {},
                  ),
                  15.getw,
                  GestureDetector(
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: 0xffFE2851.getC,
                    ),
                    onTap: () {},
                  ),
                  5.getw,
                ],
              ),
              50.geth,
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don`t Have any account ?",
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                        color: 0xffFE2851.getC,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => RegisterScreen()));
                },
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
