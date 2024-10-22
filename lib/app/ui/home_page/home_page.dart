import 'package:flood_watch_app/app/controllers/home_controller.dart';
import 'package:flood_watch_app/app/ui/home_page/widgets/about_widget.dart';
import 'package:flood_watch_app/app/ui/home_page/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {    
    final List<Widget> pages = [
      ProfileWidget(
        newUserName: "Antônio Junior",
        newUserPhotoAsset: 'assets/images/Thomas Shelby.png',
        onLogout: homeController.onLogout,
      ), // Exemplo de uso de asset local
      const Center(child: Text('Mapa Widget')),
      const Center(child: Text('Relatos Widget')),
      const AboutWidget(),
    ];


    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: homeController.currentIndex.value,
          onTap: (index) => homeController.changePage(index),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Mapa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Relatos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Sobre',
            ),
          ],
        );
      }),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              return pages[homeController.currentIndex.value]; // Widget variável
            }),
          ),
        ],
      ),
    );
  }
}