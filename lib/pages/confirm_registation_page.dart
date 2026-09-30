import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:proyekpertama/controller/confirm_registation_controller.dart';

class ConfirmRegistationPage extends StatelessWidget {
  const ConfirmRegistationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Inisialisasi controller
    final controller = Get.put(ConfirmRegistationController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Registration"), 
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: const EdgeInsets.only(top: 20.0), child: Text("Nama: ${controller.nama}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Alamat: ${controller.alamat}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Umur: ${controller.umur}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Kelamin: ${controller.kelamin}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("No Hp: ${controller.nohp}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Email: ${controller.email}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Nis: ${controller.nis}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Kelas: ${controller.kelas}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            Container(margin: const EdgeInsets.only(top: 10.0), child: Text("Jurusan: ${controller.jurusan}", style: const TextStyle(fontSize: 20, color: Colors.black))),
            
            const SizedBox(height: 24.0),
            
            ElevatedButton(
              onPressed: Get.back,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 52),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Oke",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}