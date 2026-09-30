import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart'; 
import 'package:proyekpertama/components/my_button.dart';
import 'package:proyekpertama/components/my_textfield.dart';
import 'package:proyekpertama/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtUmur = TextEditingController();
    TextEditingController txtKelamin = TextEditingController();
    TextEditingController txtNoHP = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNIS = TextEditingController();
    TextEditingController txtKelas = TextEditingController();
    TextEditingController txtJurusan = TextEditingController();

    
    return Scaffold(
      appBar: AppBar(
       title: const Text(
          "Registration",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
     body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                "Lengkapi formulir di bawah ini untuk mendaftar.",
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),


              _buildSectionTitle("Data Pribadi"),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Nama",
                txtcontroller: txtNama,
                cornerRadius: 10,
                isObscure: false,
              ),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Alamat",
                txtcontroller: txtAlamat,
                cornerRadius: 10,
                isObscure: false,
              ),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Umur",
                txtcontroller: txtUmur,
                cornerRadius: 10,
                isObscure: false,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Kelamin",
                txtcontroller: txtKelamin,
                cornerRadius: 10,
                isObscure: false,
              ),
              const SizedBox(height: 24),


              _buildSectionTitle("Informasi Kontak"),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input NoHP",
                txtcontroller: txtNoHP,
                cornerRadius: 10,
                isObscure: false,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Email",
                txtcontroller: txtEmail,
                cornerRadius: 10,
                isObscure: false,
              ),
              const SizedBox(height: 24),


              _buildSectionTitle("Data Sekolah"),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input NIS",
                txtcontroller: txtNIS,
                cornerRadius: 10,
                isObscure: false,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Kelas",
                txtcontroller: txtKelas,
                cornerRadius: 10,
                isObscure: false,
              ),
              const SizedBox(height: 12),
              MyTextfield(
                myhint: "Input Jurusan",
                txtcontroller: txtJurusan,
                cornerRadius: 10,
                isObscure: false,
              ),
              const SizedBox(height: 32),


              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.confirmRegistration,
                    arguments: {
                      'name': txtNama.text,
                      'alamat': txtAlamat.text,
                      'umur': txtUmur.text,
                      'kelamin': txtKelamin.text,
                      'nohp': txtNoHP.text,
                      'email': txtEmail.text,
                      'nis': txtNIS.text,
                      'kelas': txtKelas.text,
                      'jurusan': txtJurusan.text,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 52.0),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  "Send",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.deepPurple,
      ),
    );
  }
}