import 'package:flutter/material.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';

class PlaceHolderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mCD,
        boxShadow: [
          BoxShadow(
              color: mCL,
              offset: Offset(3, 3),
              blurRadius: 3,
              spreadRadius: -3),
        ],
      ),
    );
  }
}
