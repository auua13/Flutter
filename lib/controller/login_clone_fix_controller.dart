import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:proyekpertama/pages/menu_drawer_page.dart';

class LoginCloneFixController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;

  //method hit API
  Future<void> login() async{
    if(emailController.text.toString().isEmpty || passwordController.text.toString().isEmpty){
      Get.snackbar("error", "email password nya harus diisi kalau gak, gak bisa login");
    }else{

      try{

        isLoading.value = true; // sebagai tanda di page nya muncul loading widget
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username": emailController.text.toString(),
          "password": passwordController.text.toString(),
        });

        isLoading.value = false;
        if(response.statusCode == 200){
          // kita ambil json nya messeage pindah tampilan ke main menu
          final data = jsonDecode(response.body);
          if(data['status'] == true){
            Get.snackbar("berhasil", data['message']);
            Get.offNamed('/mainmenudrawer');
          } else {
            Get.snackbar("Gagal", data['message']);
          }

        } else {
          Get.snackbar("Gagal", "HTTP request gagal");
        }

      } catch (e) {
        Get.snackbar("Error", "Adaa kesalahan: $e");
      }
      
    }
  }

}