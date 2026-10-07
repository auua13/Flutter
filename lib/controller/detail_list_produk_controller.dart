import 'package:get/get.dart';
import 'package:proyekpertama/Models/poduk_model.dart';

class DetailListProdukController extends GetxController {
  // Implementation for detail list produk controller
  late String namaProduk;
  late String hargaProduk;
  late String deskripsiProduk;
  late String imageProduk;
  late String reviewProduk;
  late String ratingProduk;
  late String spesifikasiProduk;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments; // menangkap data dari tampilan sebelumnya
    namaProduk = arguments['namaProduk'];
    hargaProduk = arguments['hargaProduk'];
    deskripsiProduk = arguments['deskripsiProduk'];
    imageProduk = arguments['imageProduk'];
    reviewProduk = arguments['reviewProduk'];
    ratingProduk = arguments['ratingProduk'];
    spesifikasiProduk = arguments['spesifikasiProduk'];
  }
}