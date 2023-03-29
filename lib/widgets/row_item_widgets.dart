import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class RowItemWidgets extends StatelessWidget {
  const RowItemWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1;i<7;i++)
           Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10,left: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 180,
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                       margin: const EdgeInsets.only(top: 20,right: 30),
                      height: 110,
                      width: 120,
                      decoration: BoxDecoration(
                        color: PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset(
                      'images/$i.png',
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        'Nike Shoe',
                        style: TextStyle(
                            color: PRIMARY_COLOR,
                            fontSize: 23,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Men\'s Shoe ',
                        style: TextStyle(
                          color: PRIMARY_COLOR.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Text(
                            '\$50',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: PRIMARY_COLOR,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              CupertinoIcons.cart_fill_badge_plus,
                              color: Colors.white,
                              size: 25,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
