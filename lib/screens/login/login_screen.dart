import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                    color: SECONDRY_COLOR,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: PRIMARY_COLOR.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 27,
                      color: PRIMARY_COLOR,
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
                    color: SECONDRY_COLOR,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: PRIMARY_COLOR.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      size: 27,
                      color: PRIMARY_COLOR,
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
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                ),
                alignment: FractionalOffset.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                        color: PRIMARY_COLOR,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
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
                      color: PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: PRIMARY_COLOR.withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ]),
                  child: Text(
                    'Sign In',
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
                    'Don\'t Have an Account ?',
                    style: TextStyle(
                      color: PRIMARY_COLOR.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'RegisterScreen');
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: PRIMARY_COLOR,
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
