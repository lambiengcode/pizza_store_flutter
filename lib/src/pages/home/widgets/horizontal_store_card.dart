import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_pizza_store/src/public/constant.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';

class HorizontalStoreCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HorizontalStoreCardState();
}

class _HorizontalStoreCardState extends State<HorizontalStoreCard> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () => null,
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(30.0),
        ),
        depth: 3.0,
        intensity: .4,
        color: mC,
      ),
      margin: EdgeInsets.only(right: 16.0, bottom: 48.0),
      padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
      child: Column(
        children: [
          Container(
            height: width / 2.8,
            width: width / 2.8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://freepngimg.com/thumb/burger/5-2-burger-png-thumb.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'Beef Burger',
            style: TextStyle(
              color: colorTitle,
              fontFamily: 'Lato',
              fontSize: width / 22.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            'Cheesy Mozarella 🍔',
            style: TextStyle(
              color: colorTitle,
              fontFamily: 'Lato',
              fontSize: width / 26.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 12.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$\t',
                  style: TextStyle(
                    color: colorPrimary,
                    fontFamily: 'Lato',
                    fontSize: width / 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: '6.59\t\t',
                  style: TextStyle(
                    color: colorTitle,
                    fontFamily: 'Lato',
                    fontSize: width / 16.5,
                    fontWeight: FontWeight.bold,
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
