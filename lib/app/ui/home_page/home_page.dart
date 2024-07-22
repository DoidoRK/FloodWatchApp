import 'package:flood_watch_app/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('HomePage')),

    body: SafeArea(
      child: Text('HomeController'))
    );
  }
}