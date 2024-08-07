import 'package:flood_watch_app/app/ui/register/register_address_page.dart';
import 'package:flood_watch_app/app/ui/register/register_initial_page.dart';
import 'package:flood_watch_app/app/ui/register/cadastro_login_page.dart';
import 'package:flood_watch_app/app/ui/home_page/home_page.dart';
import 'package:flood_watch_app/app/ui/loading_page/loading_page.dart';
import 'package:flood_watch_app/app/ui/login_page/login_page.dart';
import 'package:flood_watch_app/app/ui/splash_page/splash_page.dart';
import 'package:flood_watch_app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.splash,page: () => SplashPage(),),
    GetPage(name: Routes.loading,page: () => LoadingPage(),),
    GetPage(name: Routes.home,page: () => HomePage(),),
    GetPage(name: Routes.login, page: () => const LoginPage()),
    GetPage(name: Routes.cadastro, page: () => RegisterInitialPage()),
    GetPage(name: Routes.cadastroEndereco, page: () => RegisterAddressPage()),
    GetPage(name: Routes.cadastroLogin, page: () => RegisterInitialPageLogin()),
  ];
}
