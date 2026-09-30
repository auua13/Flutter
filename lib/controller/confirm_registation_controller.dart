import 'package:get/get.dart';

class ConfirmRegistationController extends GetxController{
  late String nama;
  late String alamat;
  late String umur;
  late String kelamin;
  late String nohp;
  late String email;
  late String nis;
  late String kelas;
  late String jurusan;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments; // menangkap data dari tampilan sebelumnya
    nama = arguments['name'];
    umur = arguments['umur'];
    alamat = arguments['alamat'];
    kelamin = arguments['kelamin'];
    nohp = arguments['nohp'];
    email = arguments['email'];
    nis = arguments['nis'];
    kelas = arguments['kelas'];
    jurusan = arguments['jurusan'];
    // jeniskelamin = arguments['laki-laki'];
  }
}