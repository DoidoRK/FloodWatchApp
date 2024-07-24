import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flood_watch_app/app/ui/splash_page/splash_page.dart';
import 'package:flood_watch_app/routes/app_pages.dart';
import 'package:flood_watch_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN, //Rota inicial
    // initialBinding: HomeBinding(), // dependencias iniciais
    theme: appThemeData, //Tema personalizado app
    defaultTransition: Transition.fade, // Transição de telas padrão
    getPages:
        AppPages.pages, // Seu array de navegação contendo as rotas e suas pages
    home: SplashPage(), // Page inicial
  ));
}
