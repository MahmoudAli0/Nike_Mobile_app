import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_app/constants/colors.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 600,
        padding: EdgeInsets.only(top: 20),
        color: Color(0xFFCEDDEE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i < 3; i++)
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 140,
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
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'itemPage');
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, right: 40),
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: PRIMARY_COLOR,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Image.asset(
                                    'images/$i.png',
                                    height: 130,
                                    width: 130,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Nike Shose',
                                    style: TextStyle(
                                        color: PRIMARY_COLOR,
                                        fontSize: 23,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: SECONDRY_COLOR,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color:  PRIMARY_COLOR
                                                    .withOpacity(0.3),
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                              ),
                                            ]),
                                        child: Icon(
                                          CupertinoIcons.minus,
                                          size: 18,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          '02',
                                          style: TextStyle(
                                              color: PRIMARY_COLOR,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: SECONDRY_COLOR,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: PRIMARY_COLOR
                                                    .withOpacity(0.3),
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                              ),
                                            ]),
                                        child: Icon(
                                          CupertinoIcons.add,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 25,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: PRIMARY_COLOR
                                                .withOpacity(0.3),
                                            blurRadius: 5,
                                            spreadRadius: 1,
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.delete,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$50',
                                    style: TextStyle(
                                      color: PRIMARY_COLOR,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(15),
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
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Deleivery Fee : ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              Text(
                                '\$20',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: PRIMARY_COLOR,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sub-Total : ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              Text(
                                '\$100',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.3,
                            color:PRIMARY_COLOR,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Discount : ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: PRIMARY_COLOR,
                                ),
                              ),
                              Text(
                                '-\$10',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
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
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              decoration: BoxDecoration(
                  color: SECONDRY_COLOR,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                      color: PRIMARY_COLOR.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total : ',
                        style: TextStyle(
                          fontSize: 20,
                          color: PRIMARY_COLOR,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$110 ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                        color: PRIMARY_COLOR,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Check Out ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
