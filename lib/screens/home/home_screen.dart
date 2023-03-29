import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nike_shoes_app/constants/colors.dart';
import 'package:nike_shoes_app/widgets/all_item_widget.dart';
import 'package:nike_shoes_app/widgets/home_bottom_nav_bar.dart';
import 'package:nike_shoes_app/widgets/row_item_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
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
                      child:  Icon(
                        Icons.sort,
                        size: 30,
                        color: PRIMARY_COLOR,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
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
                      child:  badges.Badge(
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: PRIMARY_COLOR,
                        ),
                        badgeContent: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.redAccent,
                          padding: EdgeInsets.all(7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                margin: const EdgeInsets.symmetric(
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
                    Container(
                      margin: const EdgeInsets.only(
                        left: 5,
                      ),
                      width: 240,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle()),
                      ),
                    ),
                    const Spacer(),
                     Icon(
                      Icons.search,
                      size: 27,
                      color: PRIMARY_COLOR,

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const RowItemWidgets(),
              const SizedBox(height: 20,),
              const AllItemWidget()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
