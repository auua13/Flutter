import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyekpertama/controller/list_produk_controller.dart';
import 'package:proyekpertama/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        child: Obx(
          () => RefreshIndicator(
            onRefresh: () async {
              await controller.fetchProduk();
            },
            color: Colors.deepPurple,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                const SizedBox(height: 16),
                Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: controller.produkList.length,
                    itemBuilder: (context, index) {
                      final produk = controller.produkList[index];
                      return Container(
                        width: 180,
                        margin: const EdgeInsets.only(right: 12),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Get.toNamed(
                                Routes.detailListProduk,
                                arguments: {
                                  'namaProduk': produk.namaProduk,
                                  'hargaProduk': produk.hargaProduk,
                                  'imageProduk': produk.imageProduk,
                                  'deskripsiProduk': produk.deskripsiProduk,
                                  'reviewProduk': produk.reviewProduk,
                                  'ratingProduk': produk.ratingProduk,
                                  'spesifikasiProduk': produk.spesifikasiProduk,
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          produk.imageProduk,
                                          width: double.infinity,
                                          height: 130,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 4,
                                        right: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: PopupMenuButton<String>(
                                            icon: const Icon(Icons.more_vert, size: 18, color: Colors.black87),
                                            onSelected: (value) {
                                              if (value == 'detail') {
                                                Get.toNamed(
                                                  Routes.detailListProduk,
                                                  arguments: {
                                                    'namaProduk': produk.namaProduk,
                                                    'hargaProduk': produk.hargaProduk,
                                                    'imageProduk': produk.imageProduk,
                                                    'deskripsiProduk': produk.deskripsiProduk,
                                                    'reviewProduk': produk.reviewProduk,
                                                    'ratingProduk': produk.ratingProduk,
                                                    'spesifikasiProduk': produk.spesifikasiProduk,
                                                  },
                                                );
                                              } else if (value == 'hapus') {
                                                
                                                controller.produkList.removeAt(index);

                                                Get.snackbar(
                                                  'Berhasil', 
                                                  '${produk.namaProduk} dihapus',
                                                  snackPosition: SnackPosition.BOTTOM,
                                                );
                                              }
                                            },
                                            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                              const PopupMenuItem<String>(
                                                value: 'detail',
                                                child: Row(
                                                  children: [
                                                    SizedBox(width: 8),
                                                    Text('Detail'),
                                                  ],
                                                ),
                                              ),
                                              const PopupMenuItem<String>(
                                                value: 'hapus',
                                                child: Row(
                                                  children: [
                                                    SizedBox(width: 8),
                                                    Text('Hapus', style: TextStyle(color: Colors.red)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(produk.namaProduk,maxLines: 1,overflow: TextOverflow.ellipsis,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
                                  Text(produk.hargaProduk,style: TextStyle(color: Colors.deepPurple.shade700,fontWeight: FontWeight.w600,fontSize: 13,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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