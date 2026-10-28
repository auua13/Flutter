import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyekpertama/controller/list_produk_controller.dart';
import 'package:proyekpertama/routes.dart';
import 'package:proyekpertama/components/loginclone_image1.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Daftar Produk',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        child: Obx(
          () => RefreshIndicator(//Pull Refresh
            onRefresh: () async {
              await controller.fetchProduk();
            },
            color: Colors.deepPurple,
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: controller.produkList.length,
              // separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final produk = controller.produkList[index];
                return Dismissible(// Dissmissable
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (direction) {
                    controller.produkList.removeAt(index);//Refresh List
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      // contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8,),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          produk.imageProduk,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        produk.namaProduk,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        produk.hargaProduk,
                        style: TextStyle(
                          color: Colors.deepPurple.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                     trailing: PopupMenuButton<String>(
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
                          }
                        },
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'detail',
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Text('Lihat Detail'),
                              ],
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'hapus',
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Text('Hapus Produk'),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
