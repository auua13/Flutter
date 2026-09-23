import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:proyekpertama/components/my_button.dart';
import 'package:proyekpertama/components/my_textfield.dart';
import '/controller/kalkulator_controller.dart';
  
class KalkulatorPage2 extends StatelessWidget {
   KalkulatorPage2({super.key});

   final controller = Get.put(KalkulatorController());

  @override

  Widget build(BuildContext context) {
    final TextEditingController txtangka1 = TextEditingController();
    final TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(margin: const EdgeInsets.only(top: 16.0), child: MyTextfield(keyboardType: const TextInputType.numberWithOptions(decimal: true),myhint: 'Masukkan angka pertama', txtcontroller: txtangka1, cornerRadius: 10, isObscure: false)),
          Container(margin: const EdgeInsets.only(top: 15.0), child: MyTextfield(keyboardType: const TextInputType.numberWithOptions(decimal: true), myhint: 'Masukkan angka kedua', txtcontroller: txtangka2, cornerRadius: 10, isObscure: false)),

       Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(margin: const EdgeInsets.only(left: 5.0, right: 5.0),child: MyButton(buttonText: 'Tambah', onPressed: (){if (txtangka1.text.trim().isEmpty || txtangka2.text.trim().isEmpty){ Get.snackbar('Error', 'Mohon isi kedua kolom angka'); } else { controller.tambah(double.parse(txtangka1.text), double.parse(txtangka2.text)); }}, cornerRadius: 10, buttonColor: Colors.blue)),
          Container(margin: const EdgeInsets.only(left: 5.0, right: 5.0),child: MyButton(buttonText: 'Kurang', onPressed: (){if (txtangka1.text.trim().isEmpty || txtangka2.text.trim().isEmpty) { Get.snackbar('Error', 'Mohon isi kedua kolom angka'); } else { controller.kurang(double.parse(txtangka1.text), double.parse(txtangka2.text)); }}, cornerRadius: 10, buttonColor: Colors.blue)),
          Container(margin: const EdgeInsets.only(left: 5.0, right: 5.0),child: MyButton(buttonText: 'Kali', onPressed: (){if (txtangka1.text.trim().isEmpty || txtangka2.text.trim().isEmpty) { Get.snackbar('Error', 'Mohon isi kedua kolom angka'); } else { controller.kali(double.parse(txtangka1.text), double.parse(txtangka2.text)); }}, cornerRadius: 10, buttonColor: Colors.blue)),
          Container(margin: const EdgeInsets.only(left: 5.0, right: 5.0),child: MyButton(buttonText: 'Bagi', onPressed: (){if (txtangka1.text.trim().isEmpty || txtangka2.text.trim().isEmpty) { Get.snackbar('Error', 'Mohon isi kedua kolom angka'); } else { controller.bagi(double.parse(txtangka1.text), double.parse(txtangka2.text)); }}, cornerRadius: 10, buttonColor: Colors.blue)),
        ],
      ),
    ),
      Container(margin: const EdgeInsets.only(top: 16.0), child: Obx(( ) => Text('Hasil: ${controller.hasilhitung}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30.0)))),
  ]))));
  }
}