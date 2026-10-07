import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyekpertama/controller/detail_list_produk_controller.dart';
import 'package:proyekpertama/components/loginclone_image1.dart';

class DetailListProdukPage extends StatelessWidget {
  DetailListProdukPage({super.key});

  final controller = Get.put(DetailListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Detail Produk', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(height: 220,margin: const EdgeInsets.symmetric(horizontal: 16),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),border: Border.all(color: Colors.grey.shade300),),
               child: Image.asset(controller.imageProduk,fit: BoxFit.contain,),
            ),
            const SizedBox(height: 16),
 
            Container(padding: const EdgeInsets.all(16),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),border: Border.all(color: Colors.grey.shade300),),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(" ${controller.namaProduk}", style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),),
                  Text(" ${controller.hargaProduk}", style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                  Text("Rating : ",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey[600]), ),
                  Text(" ${controller.ratingProduk}",style:  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                  
                  const Divider(height: 24),

                  Text("Deskripsi Produk",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                  const SizedBox(height: 4),
                  Text(controller.deskripsiProduk,style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.4),),

                  const Divider(height: 24),

                  Text("Spesifikasi Produk",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                  const SizedBox(height: 4),
                  Text(controller.spesifikasiProduk,style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.4),),

                  const Divider(height: 24),

                  Text("Review Produk",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.grey[600]),),const SizedBox(height: 4),
                  Text(controller.reviewProduk,style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.4),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),


            ElevatedButton(
              onPressed: Get.back,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Kembali",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}