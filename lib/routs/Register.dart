import 'package:flutter/material.dart';
import 'package:recho/routs/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'RECHO',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'إنشاء حساب جديد',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'أدخل بياناتك للتسجيل',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    label: 'الاسم الكامل',
                    controller: _fullNameController,
                    validator: (value) {
                      if (value == null || value.length < 3) {
                        return 'يجب أن يكون الاسم 3 أحرف على الأقل';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  _buildTextField(
                    label: 'البريد الإلكتروني',
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || !value.contains('@')) {
                        return 'البريد الإلكتروني غير صحيح';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  _buildTextField(
                    label: 'رقم الجوال',
                    controller: _phoneController,
                    validator: (value) {
                      if (value == null || value.length != 10) {
                        return 'رقم الجوال غير صحيح';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  _buildTextField(
                    label: 'كلمة المرور',
                    controller: _passwordController,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return "يجب أن تحتوي كلمة المرور على 8 أحرف على الأقل";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  _buildTextField(
                    label: 'تأكيد كلمة المرور',
                    controller: _confirmPasswordController,
                    isPassword: true,
                    validator: (value) {
                      if (value != _passwordController.text) {
                        return 'كلمة المرور غير متطابقة';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('تم التسجيل بنجاح')),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()),
                          );

                          // Reset form fields after submission
                          _formKey.currentState!.reset();
                          _passwordController.clear();
                          _confirmPasswordController.clear();
                          _fullNameController.clear();
                          _emailController.clear();
                          _phoneController.clear();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('تأكد من إدخال جميع الحقول بشكل صحيح')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        'تسجيل',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login screen
                    },
                    child: const Text(
                      'لديك حساب بالفعل؟ تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    TextEditingController? controller,
    bool isPassword = false,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextFormField(
          obscureText: isPassword,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            hintText: label,
            filled: true,
            fillColor: Colors.white, // Set fill color to white (or any color you prefer)
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.blue, width: 2.0), // Blue border
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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


  }
