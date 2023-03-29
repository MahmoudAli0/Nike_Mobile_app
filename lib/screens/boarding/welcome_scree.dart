import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                ),
                child: Image.asset(
                  'images/start-removebg-preview.png',
                  width: 270,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
             const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Comfort ',
                style: TextStyle(
                    fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Is Every Thing  ',
                style: TextStyle(
                    fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: Container(
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:  PRIMARY_COLOR,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, 'LoginScreen');
                      },
                      child: const Text('GET STARTED',style: TextStyle(fontSize: 25,),),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
