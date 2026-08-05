import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ปฏิบัติการบทที่ 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ปฏิบัติการบทที่ 5 - Layouts'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Text(
                          'โปรไฟล์ผู้ใช้',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text('แก้ไขoverflow'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Text(
              'ตัวอย่างแบบฝึกหัดที่ 6: Flex (อัตราส่วน 1 : 2 : 1)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Row(
              children: <Widget>[
                // สัดส่วน 1/4 (25%)
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    child: const Center(
                      child: Text(
                        'flex: 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // สัดส่วน 2/4 (50%)
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    child: const Center(
                      child: Text(
                        'flex: 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // สัดส่วน 1/4 (25%)
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                    child: const Center(
                      child: Text(
                        'flex: 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
