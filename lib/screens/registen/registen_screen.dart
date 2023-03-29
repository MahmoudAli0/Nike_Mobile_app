import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Image.asset(
                  'images/app_logo.png',
                  width: 270,
                  height: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 55,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 27,
                      color: Color(0xFF475269),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 240,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'User Name '),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 55,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 27,
                      color: Color(0xFF475269),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 240,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Email '),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 55,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      size: 27,
                      color: Color(0xFF475269),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 240,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Password '),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'homePage');
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF475269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ]),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an Account ?',
                    style: TextStyle(
                      color: Color(0xFF475269).withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'LoginScreen');
                      },
                      child: Text(
                        'Sign In Now',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF475269),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,

                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
