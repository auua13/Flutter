
import 'package:get/get.dart';
import 'package:proyekpertama/pages/confirm_registation_page.dart';
import 'package:proyekpertama/pages/main_menu_page.dart';
import 'package:proyekpertama/pages/menu_drawer_page.dart';
import 'package:proyekpertama/pages/registration_page.dart';
import 'package:proyekpertama/pages/list_produk_page.dart';
import 'package:proyekpertama/pages/detail_list_produk_page.dart';

class Routes {
  //list halaman apk
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmregistration";
  static const String listProduk = "/listproduk";
  static const String detailListProduk = "/detaillistproduk";
  static const String mainMenu = "/mainmenu";
  static const String mainMenuDrawer = "/mainmenudrawer";
  
  // dll

  // tampung ke array buat ke maindart
  static final pages = [
    GetPage(name: registration, page: ()=> RegistrationPage()), 
    GetPage(name: confirmRegistration, page: ()=> ConfirmRegistationPage()),
    GetPage(name: listProduk, page: ()=> ListProdukPage()),
    GetPage(name: detailListProduk, page: ()=> DetailListProdukPage()),
    GetPage(name: mainMenu, page: ()=> MainMenuPage()),
    GetPage(name: mainMenuDrawer, page: ()=> MenuDrawerPage()),

    // dll
  ];
}