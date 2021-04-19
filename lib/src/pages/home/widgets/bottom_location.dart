import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_pizza_store/src/controllers/product_controller.dart';
import 'package:flutter_pizza_store/src/events/location_event.dart';
import 'package:flutter_pizza_store/src/public/constant.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';
import 'package:get/get.dart';

class BottomLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomLocationState();
}

class _BottomLocationState extends State<BottomLocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
        color: mC,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12.0),
            Container(
              height: 4.0,
              margin: EdgeInsets.symmetric(horizontal: width * .35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: mCD,
                boxShadow: [
                  BoxShadow(
                    color: mCD,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0,
                  ),
                  BoxShadow(
                    color: mCL,
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.0),
            _buildAction(context, 'Ha Noi', Feather.map_pin),
            Divider(
              color: colorDarkGrey,
              thickness: .15,
              height: .15,
              indent: 24.0,
              endIndent: 24.0,
            ),
            _buildAction(context, 'Da Nang', Feather.map_pin),
            Divider(
              color: colorDarkGrey,
              thickness: .15,
              height: .15,
              indent: 24.0,
              endIndent: 24.0,
            ),
            _buildAction(context, 'Ho Chi Minh', Feather.map_pin),
            SizedBox(height: 18.0),
          ],
        ),
      ),
    );
  }

  Widget _buildAction(context, title, icon) {
    final _size = MediaQuery.of(context).size;
    final _productController = Get.put(ProductController());

    setLocation(LocationType location) {
      _productController.setLocation(location);
      Get.back();
    }

    return GetBuilder<ProductController>(
      builder: (_) => GestureDetector(
        onTap: () {
          switch (title) {
            // English
            case 'Ha Noi':
              setLocation(LocationType.hanoi);
              break;
            case 'Da Nang':
              setLocation(LocationType.danang);
              break;
            case 'Ho Chi Minh':
              setLocation(LocationType.hochiminh);
              break;

            default:
              break;
          }
        },
        child: Container(
          width: _size.width,
          color: mC,
          padding: EdgeInsets.fromLTRB(24.0, 15.0, 20.0, 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: _size.width / 18.0,
                    color: title.toString().replaceAll(' ', '').toLowerCase() ==
                            _.location
                                .toString()
                                .replaceAll('LocationType.', '')
                                .toLowerCase()
                        ? colorPrimary
                        : fCD,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: _size.width / 24.0,
                      fontWeight: FontWeight.w600,
                      color:
                          title.toString().replaceAll(' ', '').toLowerCase() ==
                                  _.location
                                      .toString()
                                      .replaceAll('LocationType.', '')
                                      .toLowerCase()
                              ? colorPrimary
                              : fCD,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
