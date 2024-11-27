import 'package:flutter/material.dart';


class CallLogscreen extends StatefulWidget {
  const CallLogscreen({super.key});

  @override
  State<CallLogscreen> createState() => _CallLogscreenState();
}

class _CallLogscreenState extends State<CallLogscreen> {

  final List<Map<String, String>> callData = [
    {
      "name": "أحمد محمد",
      "duration": "15 دقيقة",
      "cost": "7.5 ريال",
      "date": "14:30 2024-01-15",
    },
    {
      "name": "سارة خالد",
      "duration": "5 دقيقة",
      "cost": "2.5 ريال",
      "date": "13:15 2024-01-15",
    },
    {
      "name": "محمد علي",
      "duration": "30 دقيقة",
      "cost": "15 ريال",
      "date": "11:45 2024-01-15",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "سجل المكالمات",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
      Container(
      color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Search Bar
              TextField(
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  hintText: "... ابحث عن اسم المشترك",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 16),
              // List of Call Records
              Expanded(
                child: ListView.builder(
                  itemCount: callData.length,
                  itemBuilder: (context, index) {
                    final call = callData[index];
                    return Card(
                      color: Colors.blue[50],
                      margin: const EdgeInsets.only(bottom: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child:

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "تكلفة المكالمة\n${call['cost']}",
                              style: TextStyle(fontSize: 14, color: Colors.red,fontWeight:FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "اسم المشترك: ${call['name']}",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "تاريخ المكالمة: ${call['date']}",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "مدة المكالمة: ${call['duration']}",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 14, color: Colors.green),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


