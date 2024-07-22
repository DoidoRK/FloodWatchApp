import 'package:flood_watch_app/app/controllers/loading_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingPage extends GetView<LoadingController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('LoadingPage')),

    body: SafeArea(
      child: Text('MyController'))
    );
  }
}