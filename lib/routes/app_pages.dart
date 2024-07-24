import 'package:flood_watch_app/app/ui/home_page/home_page.dart';
import 'package:flood_watch_app/app/ui/loading_page/loading_page.dart';
import 'package:flood_watch_app/app/ui/login_page/login_page.dart';
import 'package:flood_watch_app/app/ui/splash_page/splash_page.dart';
import 'package:flood_watch_app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.LOADING,
      page: () => LoadingPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(name: Routes.LOGIN, page: () => LoginPage())
  ];
}
