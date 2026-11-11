import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:proyekpertama/models/produk_model_hp.dart'; 

class ListProdukHpController extends GetxController {

  RxList<Product> produkList = <Product>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduk();
  }

  Future<void> fetchProduk() async {
    try {
      isLoading.value = true;

      final url = Uri.parse(
        "https://dummyjson.com/products/category/smartphones",
      );

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = produkModelFromJson(response.body);

        produkList.assignAll(data.products);
      } else {
        Get.snackbar("Gagal", "Gagal memuat data produk dari server");
      }
    } catch (e) {
      Get.snackbar("Error", "Terjadi kesalahan: $e");
      print("Error fetch produk: $e");
    } finally {
      isLoading.value = false;
    }
  }
}