import 'package:flutter/material.dart';
import 'package:flutter_mobile_halkaton/app/modules/login/views/login_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_screen/views/page_up_screen_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key})
  :super(key: key,);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Color.fromARGB(255, 80, 132, 156),
        body: Container(
          
          width: double.maxFinite,
          padding:  const EdgeInsets.only(
            left: 6.0,
            top: 50.0,
            right: 6.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context,PageUpScreenView.routeName);
                },
                child: const Image(image: AssetImage('assets/logo.png')),
              ),
              const SizedBox(height: 13.0),
              Text(
                "Bokkouyon_APP".tr,
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue, 
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal, 
                  fontFamily: 'Roboto', 
                ),
              ),
    const SizedBox(height: 5.0),
  ],
)

          ),
        ),
    );
  }
}

