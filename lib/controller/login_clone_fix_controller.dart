import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:proyekpertama/routes.dart';
import 'package:proyekpertama/models/login_model.dart'; 

class LoginCloneFixController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  Future<void> login() async {
    if (emailController.text.toString().isEmpty || passwordController.text.toString().isEmpty) {
      Get.snackbar("Error", "Email dan password harus diisi kalau gak, gak bisa login");
    } else {
      
      try {
        isLoading.value = true; 
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username": emailController.text.toString(),
          "password": passwordController.text.toString(),
        });

        isLoading.value = false;

        if (response.statusCode == 200) {
          loginModel.value = loginModelFromJson(response.body);

          if (loginModel.value?.status == true) {
            Get.snackbar("Berhasil", loginModel.value!.message);
            Get.offNamed(Routes.mainMenuDrawer); 
          } else {
            Get.snackbar("Gagal", loginModel.value?.message ?? "Login gagal");
          }

        } else {
          Get.snackbar("Gagal", "HTTP request gagal");
        }

      } catch (e) {
        isLoading.value = false;
        Get.snackbar("Error", "Ada kesalahan: $e");
      }
    }
  }
}