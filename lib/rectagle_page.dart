import 'package:flutter/material.dart';

class RectanglePage extends StatefulWidget {
  const RectanglePage({super.key});

  @override
  State<RectanglePage> createState() => RectanglePageState();
}

class RectanglePageState extends State<RectanglePage> {

  int _width = 0;
  int _length = 0;
  int _ares = 0;

final TextEditingController _widthCtrl = TextEditingController();
final TextEditingController _lengthCtrl = TextEditingController();

  final InputDecoration _textFieldStyle = InputDecoration(
      filled: true,
      fillColor: Colors.blue[100],
      border: OutlineInputBorder()
  );

  void _calRectagle(){
 _width = int.tryParse(_widthCtrl.text) ?? 0;
 _length = int.tryParse(_lengthCtrl.text) ?? 0;

 setState(() {
   _ares = _width * _length;
 });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("คำนวณพื้นที่สี่เหลี่ยม"), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text("กว้าง $_width ม  ยาว $_length ม พื้นที่คือ $_ares ตร.ม.",style: TextStyle(fontSize: 22),),
          SizedBox(height: 20,),
          TextField(
            controller: _widthCtrl,
            decoration: _textFieldStyle.copyWith(label: Text("ความกว้าง"), hint:  Text("กรอกความกว้าง")),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _lengthCtrl,
            decoration: _textFieldStyle.copyWith(label: Text("ความยาว"), hint:  Text("กรอกความยาว")),),
          ElevatedButton(onPressed: ( )=> _calRectagle(), child: Text("คำนวณพื้นที่"))
        ],
      ),
    );
  }
}