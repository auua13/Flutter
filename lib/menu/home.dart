
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyekpertama/controller/list_produk_hp_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukHpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Smartphones',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 9, 9, 9),
      ),
      body: Container(
        margin: const EdgeInsets.all(0),
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
                SizedBox(
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        produk.thumbnail,
                                        width: double.infinity,
                                        height: 130,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const SizedBox(
                                          height: 130,
                                          child: Center(
                                            child: Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 4,
                                      right: 4,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: PopupMenuButton<String>(
                                          icon: const Icon(
                                            Icons.more_vert,
                                            size: 18,
                                            color: Colors.black87,
                                          ),
                                          onSelected: (value) {
                                            if (value == 'hapus') {
                                              controller.produkList
                                                  .removeAt(index);

                                              Get.snackbar(
                                                'Berhasil',
                                                '${produk.title} dihapus',
                                                snackPosition:
                                                    SnackPosition.BOTTOM,
                                              );
                                            }
                                          },
                                          itemBuilder: (BuildContext context) =>
                                              <PopupMenuEntry<String>>[
                                            const PopupMenuItem<String>(
                                              value: 'hapus',
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 8),
                                                  Text(
                                                    'Hapus',
                                                    style: TextStyle(
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  produk.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "\$${produk.price}",
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 101, 101, 101),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
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
