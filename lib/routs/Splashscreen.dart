import 'package:flutter/material.dart';
import 'package:recho/routs/HomePage.dart';
import 'package:recho/routs/WalletScreen.dart';
import 'package:recho/routs/ProfileForm.dart';
import 'package:recho/routs/MyProfile.dart';
import 'package:recho/routs/Register.dart';
import 'package:recho/routs/login.dart';

import 'CallLogScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "انشاء حساب جديد",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ),
              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CallLogscreen()));

                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "سجل المكالمات",
                        style: TextStyle(fontSize: 20),
                      )),

                ),
              ),
              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => WalletScreen()));

                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "محفظتي",
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ),

              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  ProfileForm()));

                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "بياناتي",
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ),
              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  Homepage()));

                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "الصفحه الرئيسيه",
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ),

              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  Login()));

                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "تسجيل دخول",
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ),

              Center(
                child: MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  Myprofile()));

                  },
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "حسابي الشحصي",
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ),

            ],
          ),







    );
  }
}
