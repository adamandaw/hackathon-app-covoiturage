import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/map_controller.dart';

class MapView extends GetView<MapController> {
  const MapView({Key? key})
  :super(key: key,);

    static String routeName="/map";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 80, 132, 156),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 889.0, 
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 9.0, 
                    vertical: 33.0, 
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRowArrowDown(),
                      const Spacer(
                        flex: 80,
                      ),
                      const CustomImageView(
                        imagePath: 'assets/imgLocation5387625530.png', // Your image path
                        height: 69.0, // Adjust as per your layout needs
                        width: 74.0, 
                        margin: EdgeInsets.only(left: 148.0), // Adjust as per your layout needs
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildRowArrowDown() {
    // Implement your _buildRowArrowDown widget here
    return Container(); // Replace with actual widget
  }

class CustomImageView extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final EdgeInsetsGeometry? margin;

  const CustomImageView({
    required this.imagePath,
    required this.height,
    required this.width,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
      ),
    );
  }
}