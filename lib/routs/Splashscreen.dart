import 'package:flutter/material.dart';
import 'package:recho/routs/Register.dart';

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
                        context, MaterialPageRoute(builder: (context) => Register()));
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
            ],
          ),







    );
  }
}
