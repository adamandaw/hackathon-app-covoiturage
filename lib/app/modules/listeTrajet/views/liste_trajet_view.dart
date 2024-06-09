import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/liste_trajet_controller.dart';

class ListeTrajetView extends GetView<ListeTrajetController> {
  ListeTrajetView({Key? key}): super(key: key);
  static String routeName="/liste-trajet";
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(7, 10.2, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 56,
              top: 142.8,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFBEBEBE),
                ),
                child: Container(
                  width: 1,
                  height: 25,
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 319.8,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFBEBEBE),
                ),
                child: Container(
                  width: 1,
                  height: 25,
                ),
              ),
            ),
            Positioned(
              left: 60,
              bottom: 394,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFBEBEBE),
                ),
                child: Container(
                  width: 1,
                  height: 25,
                ),
              ),
            ),
            SizedBox(
              width: 428,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(26.5, 0, 29.7, 31.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                          width: 28.4,
                          height: 11.1,
                          child: SizedBox(
                            width: 28.4,
                            height: 11.1,
                            // child: SvgPicture.asset(
                            //   'assets/vectors/image_5_x2.svg',
                            // ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0.2, 0, 0),
                          child: SizedBox(
                            width: 66.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.3, 5, 0.3),
                                  child: SizedBox(
                                    width: 17,
                                    height: 10.7,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/mobile_signal_28_x2.svg',
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                  child: SizedBox(
                                    width: 15.3,
                                    height: 11,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/wifi_14_x2.svg',
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 24.3,
                                    height: 11.3,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/battery_24_x2.svg',
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(18.3, 0, 18.3, 91),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 4.2, 17, 1.2),
                            width: 30.7,
                            height: 25.7,
                            child: SizedBox(
                              width: 30.7,
                              height: 25.7,
                              // child: SvgPicture.asset(
                              //   'assets/vectors/vector_50_x2.svg',
                              // ),
                            ),
                          ),
                          Text(
                            'Mes Trajets',
                            style: TextStyle(
                              
                              fontWeight: FontWeight.w700,
                              fontSize: 25.9,
                              color: Color(0xFF263A6D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(26, 0, 26, 50),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7.1, 0),
                            child: SizedBox(
                              width: 274.1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xFFFFFFFF),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x26000000),
                                              offset: Offset(0, 4),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          width: 95,
                                          height: 95,
                                          padding: EdgeInsets.fromLTRB(17, 17, 10, 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                  'assets/images/people_in_car_side_view.png',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              width: 68,
                                              height: 68,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 14.1, 14.9),
                                          child: Text(
                                            'Dakar-Yoff',
                                            style: TextStyle(
                                              
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                              color: Color(0xFF252525),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(4.2, 0, 0, 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 8.2, 4.6),
                                                width: 18.6,
                                                height: 20.4,
                                                child: SizedBox(
                                                  width: 18.6,
                                                  height: 20.4,
                                                  // child: SvgPicture.asset(
                                                  //   'assets/vectors/vector_140_x2.svg',
                                                  // ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 1.1, 0, 0),
                                                child: Text(
                                                  '01/05/2025',
                                                  style: TextStyle(
                                                    
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 19.8,
                                                    color: Color(0xFFBEBEBE),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 4.1, 5.1, 3.1),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        right: -0.2,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 19.3,
                                                          height: 22.6,
                                                          // child: SvgPicture.asset(
                                                          //   'assets/vectors/vector_174_x2.svg',
                                                          // ),
                                                        ),
                                                      ),
                                                Container(
                                                        width: 19.1,
                                                        height: 17.8,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  '2 Passengers',
                                                  style: TextStyle(
                                                    
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20.3,
                                                    color: Color(0xFFBEBEBE),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 2.1, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x99BEBEBE),
                                            ),
                                            child: Container(
                                              width: 183,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 15.2, 0, 95.2),
                            width: 16.7,
                            height: 16.7,
                            child: SizedBox(
                              width: 16.7,
                              height: 16.7,
                              // child: SvgPicture.asset(
                              //   'assets/vectors/vector_45_x2.svg',
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7.1, 0),
                            child: SizedBox(
                              width: 274.1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xFFFFFFFF),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x26000000),
                                              offset: Offset(0, 4),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          width: 95,
                                          height: 95,
                                          padding: EdgeInsets.fromLTRB(17, 17, 10, 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                  'assets/people_in_car_side_view.png',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              width: 68,
                                              height: 68,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 14.1, 14.9),
                                          child: Text(
                                            'Dakar-Thies',
                                            style: TextStyle(
                                              
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                              color: Color(0xFF252525),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(4.2, 0, 0, 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 8.2, 4.6),
                                                width: 18.6,
                                                height: 20.4,
                                                child: SizedBox(
                                                  width: 18.6,
                                                  height: 20.4,
                                                  // child: SvgPicture.asset(
                                                  //   'assets/vectors/vector_136_x2.svg',
                                                  // ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 1.1, 0, 0),
                                                child: Text(
                                                  '01/05/2025',
                                                  style: TextStyle(
                                                    
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 19.8,
                                                    color: Color(0xFFBEBEBE),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 4.1, 5.1, 3.1),
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        right: -0.2,
                                                        top: 0,
                                                        child: SizedBox(
                                                          width: 19.3,
                                                          height: 22.6,
                                                          // child: SvgPicture.asset(
                                                          //   'assets/vectors/vector_138_x2.svg',
                                                          // ),
                                                        ),
                                                      ),
                                                Container(
                                                        width: 19.1,
                                                        height: 17.8,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  '2 Passengers',
                                                  style: TextStyle(
                                                    
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20.3,
                                                    color: Color(0xFFBEBEBE),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 2.1, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x99BEBEBE),
                                            ),
                                            child: Container(
                                              width: 183,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 15.2, 0, 95.2),
                            width: 16.7,
                            height: 16.7,
                            child: SizedBox(
                              width: 16.7,
                              height: 16.7,
                              // child: SvgPicture.asset(
                              //   'assets/vectors/vector_36_x2.svg',
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 205),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7.1, 0),
                            child: SizedBox(
                              width: 274.1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xFFFFFFFF),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x26000000),
                                              offset: Offset(0, 4),
                                              blurRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Container(
                                          width: 95,
                                          height: 95,
                                          padding: EdgeInsets.fromLTRB(17, 17, 10, 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                  'assets/people_in_car_side_view.png',
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              width: 68,
                                              height: 68,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(14.2, 0, 14.2, 13.9),
                                          child: Text(
                                            'Ouakam-Ville',
                                            style: TextStyle(
                                              
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                              color: Color(0xFF252525),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(4.2, 0, 0, 10),
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 8.2, 4.6),
                                                  width: 18.6,
                                                  height: 20.4,
                                                  child: SizedBox(
                                                    width: 18.6,
                                                    height: 20.4,
                                                    // child: SvgPicture.asset(
                                                    //   'assets/vectors/vector_90_x2.svg',
                                                    // ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 1.1, 0, 0),
                                                  child: Text(
                                                    '01/05/2025',
                                                    style: TextStyle(
                                                      
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 19.8,
                                                      color: Color(0xFFBEBEBE),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 4.1, 5.1, 3.1),
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      right: -0.2,
                                                      top: 0,
                                                      child: SizedBox(
                                                        width: 19.3,
                                                        height: 22.6,
                                                        // child: SvgPicture.asset(
                                                        //   'assets/vectors/vector_21_x2.svg',
                                                        // ),
                                                      ),
                                                    ),
                                              Container(
                                                      width: 19.1,
                                                      height: 17.8,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                '2 Passengers',
                                                style: TextStyle(
                                                  
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.3,
                                                  color: Color(0xFFBEBEBE),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 2.1, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x99BEBEBE),
                                            ),
                                            child: Container(
                                              width: 183,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 15.2, 0, 95.2),
                            width: 16.7,
                            height: 16.7,
                            child: SizedBox(
                              width: 16.7,
                              height: 16.7,
                              // child: SvgPicture.asset(
                              //   'assets/vectors/vector_145_x2.svg',
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(28.7, 16, 26.8, 11),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(2.3, 0, 2.2, 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 20,
                                    height: 22,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/vector_144_x2.svg',
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 1),
                                  child: SizedBox(
                                    width: 21,
                                    height: 19,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/vector_137_x2.svg',
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                                  child: SizedBox(
                                    width: 21,
                                    height: 21,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/vector_22_x2.svg',
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 1),
                                  child: SizedBox(
                                    width: 21,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFF001A72),
                                            ),
                                            child: Container(
                                              width: 21,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFF001A72),
                                            ),
                                            child: Container(
                                              width: 21,
                                              height: 2,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF001A72),
                                          ),
                                          child: Container(
                                            width: 21,
                                            height: 2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                child: SizedBox(
                                  width: 113,
                                  child: Text(
                                    'HOME',
                                    style: TextStyle(
  
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      color: Color(0xFF188AEC),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'RIDE',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Color(0xB2000000),
                                ),
                              ),
                              Text(
                                'MESSAGE',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Color(0xB2000000),
                                ),
                              ),
                              Text(
                                'MENU',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Color(0xB2000000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
