import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 400,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    child: Text(
                      'ع',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'حسابي الشخصي',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'محفظتي',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'الرصيد الحالي: 500 نقطة',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  _buildTextField(
                      label: 'الاسم',
                      hintText:'اكتب اسمك'
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                      label: 'رقم الجوال',
                      hintText:'اكتب رقم الجوال'
                  ),
                  SizedBox(height: 10),
                  _buildTextField(
                      label: 'كلمة المرور',
                      hintText:'اكتب كلمةالمرور'
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text('حذف الحساب',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,

                        ),
                        onPressed: () {},
                        child: Text('تعديل البيانات' ,
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),



    );
  }
}
Widget _buildTextField({
  required String label,
  required String hintText,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      const SizedBox(height: 5),
      TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.blue[50],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      ),
    ],
  );
}