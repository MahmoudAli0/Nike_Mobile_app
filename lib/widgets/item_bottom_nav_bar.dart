import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SECONDRY_COLOR,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              color: PRIMARY_COLOR,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: PRIMARY_COLOR.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ]
            ),
            child: Row(
              children: [
                Text(
                  'Add To Cart ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_fill_badge_plus,
                  color: Colors.white,
                  size: 22,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
                color: PRIMARY_COLOR,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: PRIMARY_COLOR.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ]
            ),
            child: Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
