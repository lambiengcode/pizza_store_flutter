import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';

class ErrorLoadingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
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
      alignment: Alignment.center,
      child: Icon(
        Feather.image,
        color: colorTitle,
        size: _size.width / 15.0,
      ),
    );
  }
}
