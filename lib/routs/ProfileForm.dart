import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  // Variables for dropdowns
  String? selectedCountry;
  String? selectedCity;

  // Variables for radio buttons
  String? accountType = "شخصي";

  // List of options for dropdowns
  final List<String> countries = ['قطر','عمان','البحرين','الكويت', 'الامارات العربية المتحدة', 'المملكة العربية السعودية'];
  final List<String> cities = ['الكويت', 'الجهراء', 'حولي','الفروانية'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'RECHO',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'بياناتي',
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'قم بتعديل معلوماتك الشخصية',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),
            // Text Field for Experiences
            _buildTextField(
              label: 'الخبرات',
              hintText: 'اكتب خبراتك العملية',
            ),
            const SizedBox(height: 16),
            // Text Field for Skills
            _buildTextField(
              label: 'المهارات',
              hintText: 'اكتب مهاراتك',
            ),
            const SizedBox(height: 16),
            // Text Field for Educational Qualifications
            _buildTextField(
              label: 'الشهادات الدراسية',
              hintText: 'اكتب مؤهلاتك الدراسية',
            ),
            const SizedBox(height: 16),
            // Dropdown for Country
            _buildDropdownField(
              label: 'الدولة',
              value: selectedCountry,
              items: countries,
              onChanged: (value) {
                setState(() {
                  selectedCountry = value;
                });
              },
            ),
            const SizedBox(height: 16),
            // Dropdown for City
            _buildDropdownField(
              label: 'المدينة',
              value: selectedCity,
              items: cities,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
            ),
            const SizedBox(height: 16),
            // Radio Buttons for Account Type
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    activeColor: Colors.blue,
                    title: Align(
                      alignment: Alignment.centerRight, // Align text to the right
                      child: Text(
                        'عميل',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.trailing, // Radio button on the left
                    value: 'عميل',
                    groupValue: accountType,
                    onChanged: (value) {
                      setState(() {
                        accountType = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    activeColor: Colors.blue,
                    title: Align(
                      alignment: Alignment.centerRight, // Align text to the right
                      child: Text(
                        'مقدم خدمه',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.trailing, // Radio button on the left
                    value: 'مقدم خدمه',
                    groupValue: accountType,
                    onChanged: (value) {
                      setState(() {
                        accountType = value;
                      });
                    },
                  ),
                ),
                const Text(
                  ':نوع الحساب',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
              ],
            ),

            const SizedBox(height: 20),
            // Save Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // Action on button press
              },
              child: const Text(
                'حفظ البيانات',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
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
          maxLines: 3,
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

  Widget _buildDropdownField({
    required String label,
    String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
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
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
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
          ),
          value: value,
          items: items
              .map((item) => DropdownMenuItem(
            value: item,
            child: Text(item),
          ))
              .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
