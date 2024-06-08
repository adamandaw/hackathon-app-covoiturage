import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BokkouYon'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BokkouYon',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
