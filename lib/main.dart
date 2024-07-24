import 'package:flood_watch_app/app/controllers/loading_controller.dart';
import 'package:flood_watch_app/app/controllers/login_controller.dart';
import 'package:flood_watch_app/app/controllers/splash_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
//import 'package:flood_watch_app/app/ui/splash_page/splash_page.dart';
import 'package:flood_watch_app/routes/app_pages.dart';
import 'package:flood_watch_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.SPLASH, // Rota inicial
    theme: appThemeData, // Tema personalizado do app
    defaultTransition: Transition.fade, // Transição padrão entre telas
    getPages:
        AppPages.pages, // Array de navegação contendo as rotas e suas pages
    initialBinding: BindingsBuilder(() {
      Get.put(SplashController());
      Get.put(LoadingController());
      Get.put(LoginController());
    }),
  ));
}
