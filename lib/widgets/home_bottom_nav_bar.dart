import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';
import 'package:nike_shoes_app/widgets/bottom_cart_sheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: PRIMARY_COLOR,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.category_outlined,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {
              showSlidingBottomSheet(context, builder: (context){
                return SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  builder: (context,state){
                    return BottomCartSheet();
                  }
                );
              });
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
