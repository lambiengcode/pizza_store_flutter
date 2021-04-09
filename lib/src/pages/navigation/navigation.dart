import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_pizza_store/src/pages/home/home_page.dart';
import 'package:flutter_pizza_store/src/public/constant.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';
import 'package:flutter_icons/flutter_icons.dart' as FI;

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var pages = [
    HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        child: FloatingActionButton(
          elevation: .85,
          backgroundColor: colorPrimary,
          onPressed: () => null,
          child: Icon(
            FI.Feather.search,
            color: mCL,
            size: width / 14.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: mC,
        elevation: .0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        FI.Feather.home,
                        size: width / 15.15,
                        color: colorPrimary,
                      ),
                    ),
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Ionicons.heart_outline,
                        size: width / 14.0,
                        color: colorDarkGrey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: width * .15),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Ionicons.notifications_outline,
                        size: width / 14.0,
                        color: colorDarkGrey,
                      ),
                    ),
                    IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Ionicons.cart_outline,
                        size: width / 14.0,
                        color: colorDarkGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: HomePage(),
    );
  }
}
