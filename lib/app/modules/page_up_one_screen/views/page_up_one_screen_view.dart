import 'package:flutter/material.dart';
import 'package:flutter_mobile_halkaton/app/modules/login/views/login_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_two_screen/views/page_up_two_screen_view.dart';

import 'package:get/get.dart';

import '../controllers/page_up_one_screen_controller.dart';

class PageUpOneScreenView extends GetView<PageUpOneScreenController> {
  const PageUpOneScreenView({Key? key})
  :super(key: key,);

    static String routeName="/page-up-one-screen";
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child:Scaffold(
       
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 55.0),
        child: Column(
          children: [
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context,PageUpTwoScreenView.routeName);
                },
                child: const Image(image: AssetImage('assets/im2.png')),
              ),
          const SizedBox(height: 71.0),
          Text(
                "Suiver en temps réel".tr,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0, 
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal, 
                  fontFamily: 'Roboto', 
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                "Suivez l'emplacement de votre chauffeur sur la carte".tr,
                style: const TextStyle(
                  color: Colors.black45, 
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal, 
                  fontFamily: 'Roboto', 
                ),
              ),
              const SizedBox(height: 100.0),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context,LoginView.routeName);
                },
                child: const Text("Skip",
                style:  TextStyle(
                  color: Colors.black45,
                  fontSize: 15.0,
                ),
                ),
              ),

        ],),
      ),
      )
      );
  }
}
