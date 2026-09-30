
import 'package:get/get.dart';
import 'package:proyekpertama/pages/confirm_registation_page.dart';
import 'package:proyekpertama/pages/registration_page.dart';

class Routes {
  //list halaman apk
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmregistration";
  // dll

  // tampung ke array buat ke maindart
  static final pages = [
    GetPage(name: registration, page: ()=> RegistrationPage()), 
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegistationPage())
    // dll
  ];
}