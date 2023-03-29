import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nike_shoes_app/constants/colors.dart';
import 'package:nike_shoes_app/widgets/item_bottom_nav_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
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
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: PRIMARY_COLOR,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: SECONDRY_COLOR,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: PRIMARY_COLOR.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.42,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 220,
                      margin: EdgeInsets.only(top: 20, right: 70),
                      decoration: BoxDecoration(
                        color: PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Image.asset(
                      'images/1.png',
                      height: 310,
                      width: 350,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: SECONDRY_COLOR,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: PRIMARY_COLOR.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Nike Shoes',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: PRIMARY_COLOR),
                        ),
                        Text(
                          '\$50',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          itemSize: 20,
                          direction: Axis.horizontal,
                          itemBuilder: (context, _) => Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                              ),
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (context) {}),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'This is the description of the item product.This is the description of the item product.This is the description of the item product.',
                      style: TextStyle(
                        color: PRIMARY_COLOR,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Size :',
                          style: TextStyle(
                              fontSize: 20,
                              color: PRIMARY_COLOR,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: SECONDRY_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                        PRIMARY_COLOR.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                      ),
                                    ]),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
