import 'dart:async';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

  class _LoginState extends State<Login> {
  final List<String> sentences = [
  "مرحباً بك في تطبيق Recho",
  "اطلب طعامك المفضل بضغطة زر",
  "توصيل سريع لجميع المناطق",
  ];

  final List<List<Color>> gradients = [
  [Colors.green, Colors.blue],
  [Colors.orange, Colors.red],
  [Colors.purple, Colors.pink],
  ];

  int currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
  super.initState();
  _startTimer();
  }
  void _startTimer() {
  _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
  setState(() {
  currentIndex = (currentIndex + 1) % sentences.length;
  });
  });
  }

  @override
  void dispose() {
  _timer.cancel();
  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderWithGradient(
                  text: sentences[currentIndex],
                  gradientColors: gradients[currentIndex],
                ),
                const SizedBox(height: 30),
                // Login form can go here
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTextField(
                        label: 'رقم الجوال',
                        hintText: 'أدخل رقم الجوال',
                      ),
                      const SizedBox(height: 15),
                      _buildTextField(
                        label: 'كلمة المرور',
                        hintText: 'أدخل كلمة المرور',
                        isPassword: true,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle login logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
class HeaderWithGradient extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;

  const HeaderWithGradient({
    required this.text,
    required this.gradientColors,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

Widget _buildTextField({
  required String hintText,
  required String label,
  TextEditingController? controller,
  bool isPassword = false,
  String? Function(String?)? validator,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
      const SizedBox(height: 5),
      TextFormField(
        obscureText: isPassword,
        controller: controller,
        onChanged: validator,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 12,
            height: 1.5,
          ),
        ),

        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      ),


    ],
  );



}