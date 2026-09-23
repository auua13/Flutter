import 'package:get/get.dart';

class KalkulatorController extends GetxController {

  var hasilhitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
      double hasilTambah = angka1 + angka2;
      hasilhitung.value = hasilTambah;
      Get.snackbar('Hasil Jumlah', '$hasilTambah');
    }
  
  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilhitung.value = hasilKurang;
    Get.snackbar('Hasil Kurang', '$hasilKurang');
  }
  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilhitung.value = hasilKali;
    Get.snackbar('Hasil Kali', '$hasilKali');
  }
  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
       Get.snackbar('Error', 'Angka kedua tidak boleh nol');
    } else {
       double hasilBagi = angka1 / angka2;
      hasilhitung.value = hasilBagi;
      Get.snackbar('Hasil Bagi', '$hasilBagi');
    }
  }
}