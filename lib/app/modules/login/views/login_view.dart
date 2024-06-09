import 'package:flutter/material.dart';
import 'package:flutter_mobile_halkaton/app/modules/map/views/map_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/otp/views/otp_view.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}): super(key: key);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    //super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      String email = _emailController.text;
      String password = _passwordController.text;
      print('Email: $email, Password: $password');
    }
  }
static String routeName="/login";


  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 194, 231, 215),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const InkWell(
                child: Image(image: AssetImage('assets/oc.png')),
              ),
               InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context,OtpView.routeName);
                },
                child: const Text(
                      'Se connecter',
                      style: TextStyle(
                        //'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 40,
                        color: Color(0xFF263A6D),
                      ),
                    ),
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Veuillez entrer un email valide';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Mot De passe',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mot de passe est incorrect';
                  }
                  if (value.length < 4) {
                    return 'Le mot de passe doit contenir au moins 4 caractères';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _login,
                child: const Text('Se connecter'),
              ),
              
              Container(
              margin: EdgeInsets.fromLTRB(0, 1, 0, 2),
                              child: const Text(
                                'Se connecter avec  Google',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0x996F6969),
                                ),
                              ),
                            ),
                            Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 3.8, 0),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Pas de compte?',
                        style: TextStyle(
                         
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFF252525),
                        ),
                        children: [
                          TextSpan(
                            text: ' Inscrivez vous',
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
      ),
      ),
    );
  }
}


