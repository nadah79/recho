import 'package:flutter/material.dart';
import 'package:recho/routs/Splashscreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
         return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splashscreen()));
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child:
              Text("Splash",style: TextStyle(fontSize: 20), )

          ),

        ),
      ),
    );

  }
}
