import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';
import 'package:flutter_pizza_store/src/widgets/error_loading_image.dart';
import 'package:flutter_pizza_store/src/widgets/place_holder_image.dart';
import 'package:get/get.dart';

class HorizontalStoreCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HorizontalStoreCardState();
}

class _HorizontalStoreCardState extends State<HorizontalStoreCard> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * .38,
      margin: EdgeInsets.only(right: 6.0),
      child: Stack(
        children: [
          Container(
            width: _size.width * .36,
            height: _size.width * .412,
            margin: EdgeInsets.only(left: _size.width * .01),
            padding: EdgeInsets.only(left: 6.5, right: 4.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: mC,
              boxShadow: [
                BoxShadow(
                  color: mCD,
                  offset: Offset(5, 5),
                  blurRadius: 5,
                ),
                BoxShadow(
                  color: mCL,
                  offset: Offset(-5, -5),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: _size.width * .26 + 6.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Highlands Coffee',
                      style: TextStyle(
                        color: colorTitle,
                        fontSize: _size.width / 38.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star_rate,
                          color: Colors.amber.shade600,
                          size: _size.width / 38.0,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: _size.width / 38.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 2.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '30 ${'min'.trArgs()}',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: _size.width / 40.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '${'opens'.trArgs()} 9 am',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: _size.width / 40.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Coffee',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: _size.width / 42.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      'Fastfood',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: _size.width / 42.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      'Breakfast',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: _size.width / 42.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: .0,
            left: .0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: CachedNetworkImage(
                  width: _size.width * .38,
                  height: _size.width * .26,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => PlaceHolderImage(),
                  errorWidget: (context, url, error) => ErrorLoadingImage(),
                  imageUrl:
                      "https://www.highlandscoffee.com.vn/vnt_upload/weblink/HCO-7605-FESTIVE-2020-WEB-FB-2000X639_1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
