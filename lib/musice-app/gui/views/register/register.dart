import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_ui_app/core/utils/size.dart';
import 'package:music_ui_app/musice-app/gui/views/login/login.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0B1E),
      body: SingleChildScrollView(
          child: Form(
        key: formkey,
        child: Stack(
          children: [
            Image.asset("asset/image/background-login.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                125.geth,
                Image.asset("asset/image/logo-app.png"),
                5.geth,
                Text(
                  "Song Chimp",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
                15.geth,
                Text(
                  "Register",
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
                25.geth,
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        fillColor: Color(0x00000000),
                        filled: true,
                        prefixIcon: Icon(Icons.e_mobiledata_rounded),
                        hintText: "Enter Full Name",
                        hintStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.2, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(4)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.2, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                25.geth,
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: TextFormField(
                    controller: phonenumber,
                    decoration: InputDecoration(
                        fillColor: Color(0x00000000),
                        filled: true,
                        prefixIcon: Icon(Icons.e_mobiledata_rounded),
                        hintText: "Enter Number Phone",
                        hintStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.2, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(4)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.2, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                25.geth,
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                        fillColor: Color(0x00000000),
                        filled: true,
                        prefixIcon: Icon(Icons.e_mobiledata_rounded),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.2, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(4)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.2, color: Color(0xffFFFFFF)),
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                15.geth,
                Row(
                  children: [
                    Checkbox(
                        value: select,
                        onChanged: (onChanged) {
                          if (onChanged == select) {}
                        }),
                    Text(
                      "Register fsfsfsfsfsfsfsf",
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
                20.geth,
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    height: 50,
                    color: 0xffFE2851.getC,
                    child: Text(
                      "Register",
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
                15.geth,
                25.geth,
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have a account ?",
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: 0xffFE2851.getC,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => LoginScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
