import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class AllItemWidget extends StatelessWidget {
  const AllItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.59,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 7; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: SECONDRY_COLOR,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: PRIMARY_COLOR.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'images/$i.png',
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nike Shoe ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: PRIMARY_COLOR),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Nike Shoes For Men ',
                    style: TextStyle(
                      fontSize: 15,
                      color: PRIMARY_COLOR.withOpacity(0.7),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$50',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: PRIMARY_COLOR,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          CupertinoIcons.cart_fill_badge_plus,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
