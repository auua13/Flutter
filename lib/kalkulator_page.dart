import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Container(margin: const EdgeInsets.all(20), child: TextField(keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly], decoration: InputDecoration( hintStyle: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.grey[200]),border: OutlineInputBorder(), hintText: 'Angka Pertama'))),
          Container(margin: const EdgeInsets.all(20), child: TextField(keyboardType: TextInputType.number, inputFormatters: [FilteringTextInputFormatter.digitsOnly], decoration: InputDecoration( hintStyle: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.grey[200]),border: OutlineInputBorder(), hintText: 'Angka Kedua'))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: const EdgeInsets.all(20), child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),child: Text('+', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26)))),
              Container(margin: const EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))), child: Text('-', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26)))),
              Container(margin: const EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))), child: Text('x', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26)))),
              Container(margin: const EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size(50, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))), child: Text('÷', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 26)))),
            ],
          ),
          Text('Hasil: ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
           Container(margin: const EdgeInsets.all(20), child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 157, 133, 255)), child: Text('Reset', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)))),
       ],
      ),
    );
  }
}