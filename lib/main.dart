import 'package:flutter/material.dart';
import 'rectagle_page.dart';
import 'Liters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => MyHomePage(),
        '/rectangle_page': (context) => RectanglePage(),
        '/Liters': (context) => LitersPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ใส่สีไล่ระดับพื้นหลัง
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[100]!, Colors.white],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "แอปคำนวณ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 30),

                // ปุ่มไปหน้าคำนวณพื้นที่
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/rectangle_page'),
                  child: Text('คำนวณพื้นที่สี่เหลี่ยม'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    minimumSize: Size(250, 50),
                  ),
                ),

                SizedBox(height: 20),

                // ปุ่มไปหน้าแปลงลิตร
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/Liters'),
                  child: Text('แปลงค่าลิตรเป็นลูกบาศก์เมตร'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    minimumSize: Size(250, 50),
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