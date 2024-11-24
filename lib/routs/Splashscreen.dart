
import 'package:flutter/material.dart';
import 'package:recho/routs/Register.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
      textColor: Colors.white,
      onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child:
          Text("Register",style: TextStyle(fontSize: 20), )

      ),

    ),
      ),
    );
  }
}
