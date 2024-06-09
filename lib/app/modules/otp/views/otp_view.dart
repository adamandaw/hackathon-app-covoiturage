import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';




class OtpView extends GetView<OtpController> {
  const OtpView({Key? key})
  :super(key: key,);

  static String routeName="/otp";
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(25.3, 10.2, 22.7, 81),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8.1, 0, 0, 35.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                          width: 28.4,
                          height: 11.1,
                          child: const SizedBox(
                            width: 28.4,
                            height: 11.1,
                           // child: Image(image: AssetImage('assets/vectors/image_22_x2.svg')),
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
                                  child: const SizedBox(
                                    width: 17,
                                    height: 10.7,
                                    
                                    // child: Image(image: AssetImage('assets/vectors/mobile_signal_29_x2.svg')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                  child:const SizedBox(
                                    width: 15.3,
                                    height: 11,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/wifi_7_x2.svg',
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 24.3,
                                    height: 11.3,
                                     // child: Image(image: AssetImage('assets/vectors/battery_32_x2.svgg')),
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
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 251.2),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 30.7,
                        height: 25.7,
                        child: SizedBox(
                          width: 30.7,
                          height: 25.7,
                        
                          //child: Image(image: AssetImage('assets/vector_154_x2.svg')),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(18, 0, 0, 7),
                    child: const Text(
                      'Vérification',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        
                        fontWeight: FontWeight.w700,
                        fontSize: 36,
                        color: Color(0xFF263A6D),
                      ),
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.fromLTRB(6.4, 0, 0, 2),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xB24A73DA),
                      ),
                      child: Container(
                        width: 71,
                        height: 5,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(31.7, 0, 34.9, 72),
                    child: const Text(
                      'Un code vous a été envoyer par sms',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                        color: Color(0xFFBEBEBE),
                        decorationColor: Color(0xFFBEBEBE),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 11),
                    child: SizedBox(
                      width: 259.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 19.5, 0),
                            child: const SizedBox(
                              width: 61.5,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  color: Color(0xFF252525),
                                ),
                              ),
                            ),
                          ),
                        const Text(
                            '4',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Color(0xFF252525),
                            ),
                          ),
                         const Text(
                            '6',
                            style: TextStyle(
                              
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Color(0xFF252525),
                            ),
                          ),
                          const Text(
                            '8',
                            style: TextStyle(
                              
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Color(0xFF252525),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 1.6, 66),
                    child: SizedBox(
                      width: 285,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration:const BoxDecoration(
                              color: Color(0xFFC6C6C6),
                            ),
                            child: Container(
                              width: 45,
                              height: 2,
                            ),
                          ),
                          Container(
                            decoration:const BoxDecoration(
                              color: Color(0xFFC6C6C6),
                            ),
                            child: Container(
                              width: 45,
                              height: 2,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFC6C6C6),
                            ),
                            child: Container(
                              width: 45,
                              height: 2,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFC6C6C6),
                            ),
                            child: Container(
                              width: 45,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 3.6, 35),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4A73DA),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: 287,
                        padding: const EdgeInsets.fromLTRB(9.4, 11, 0, 10),
                        child:const Text(
                          'Verifier',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 3.6, 105),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFD6DDE4)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Container(
                      width: 287,
                      padding: EdgeInsets.fromLTRB(0, 11, 1.9, 10),
                      child: const Text(
                        'Renvoyer le code',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                         
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xB2B0A9A9),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 3.4, 0),
                    child: RichText(
                      text:const TextSpan(
                        text: 'Besoin d’aide?',
                        style: TextStyle(
                          
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFF5F5D5D),
                        ),
                        children: [
                          TextSpan(
                            text: ' Contactez-nous',
                            style: TextStyle(
                              
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              height: 1.3,
                              color: Color(0xFF4A73DA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -7.3,
              right: 2.3,
              top: 0.8,
              child: Container(
                //child: Image(image: AssetImage('assets/vector_154_x2.svg')),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/verified_concept_illustration_11436051381.png',
                    ),
                  ),
                ),
                child: SizedBox(
                  width: 385.1,
                  height: 341,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 3.1, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text(
                          'FR',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            letterSpacing: 2.6,
                            color: Color(0xFF188AEC),
                            decorationColor: Color(0xFF188AEC),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: SizedBox(
                            width: 19,
                            height: 9,
                            // child: SvgPicture.asset(
                            //   'assets/vectors/vector_141_x2.svg',
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
