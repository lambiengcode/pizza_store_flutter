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
          BorderRadius.circular(24.0),
        ),
        depth: 4.0,
        intensity: .75,
        color: mC,
      ),
      margin: EdgeInsets.only(right: 16.0, bottom: 48.0),
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Column(
        children: [
          SizedBox(height: 4.0),
          Container(
            height: width / 3.0,
            width: width / 3.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://thepizzacompany.vn/images/thumbs/000/0002212_sf-cocktail_300.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Beef Burger',
            style: TextStyle(
              color: colorTitle,
              fontFamily: 'Lato',
              fontSize: width / 22.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Cheesy Mozarella',
            style: TextStyle(
              color: colorTitle,
              fontFamily: 'Lato',
              fontSize: width / 26.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16.0),
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
                  text: '6.59',
                  style: TextStyle(
                    color: colorTitle,
                    fontFamily: 'Lato',
                    fontSize: width / 18.0,
                    fontWeight: FontWeight.w600,
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
