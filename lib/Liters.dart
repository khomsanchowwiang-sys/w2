import 'package:flutter/material.dart';

class LitersPage extends StatefulWidget {
  const LitersPage({super.key});

  @override
  State<LitersPage> createState() => LitersPageState();
}

class LitersPageState extends State<LitersPage> {

  double _liters = 0;
  double _cubicMeters = 0;

  final TextEditingController _literCtrl = TextEditingController();

  final InputDecoration _textFieldStyle = InputDecoration(
      filled: true,
      fillColor: Colors.blue[100],
      border: OutlineInputBorder()
  );

  void _convertUnit() {
    double inputLiters = double.tryParse(_literCtrl.text) ?? 0;
    setState(() {
      _liters = inputLiters;
      _cubicMeters = _liters / 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แปลงลิตร เป็น ลูกบาศก์เมตร"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Container(
        // ใส่สีไล่ระดับพื้นหลัง
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.teal[100]!, Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300)
                  ),
                  child: Column(
                    children: [
                      Image.network(
                        "https://i.postimg.cc/85znZm4n/Capture.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.inbox, size: 100, color: Colors.grey);
                        },
                      ),
                      SizedBox(height: 5),
                      Text("1 m³ = 1000 L", style: TextStyle(color: Colors.grey[700], fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Text("$_liters ลิตร = $_cubicMeters ลบ.ม.", style: TextStyle(fontSize: 22),),
                SizedBox(height: 20,),
                TextField(
                  controller: _literCtrl,
                  keyboardType: TextInputType.number,
                  decoration: _textFieldStyle.copyWith(
                      label: Text("ปริมาตร(ลิตร)"),
                      hintText: "กรอกจำนวนลิตร เช่น 2000"
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () => _convertUnit(), child: Text("แปลงค่า"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}