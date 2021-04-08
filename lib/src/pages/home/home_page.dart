import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_pizza_store/src/pages/home/widgets/horizontal_store_card.dart';
import 'package:flutter_pizza_store/src/public/constant.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'Popular',
    'Electric',
    'Fashion',
    'Food',
    'Phone',
    'Shoe',
  ];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: mC,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: height / 20.0),
            _buildTopbar(),
            SizedBox(height: 24.0),
            _buildListCategories(),
            SizedBox(height: 6.0),
            Expanded(
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 12.0),
                    _buildTitle('Popular Sale'),
                    SizedBox(height: 12.0),
                    _buildPopularStore(context),
                    SizedBox(height: 12.0),
                    _buildTitle('Recommanded for you'),
                    SizedBox(height: 12.0),
                    _buildPopularStore(context),
                    SizedBox(height: 12.0),
                    _buildTitle('Top Collection'),
                    SizedBox(height: 12.0),
                    _buildPopularStore(context),
                    SizedBox(height: 12.0),
                    _buildTitle('Upcomming'),
                    SizedBox(height: 12.0),
                    _buildPopularStore(context),
                    SizedBox(height: 24.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildActionTopbar('Back', Feather.arrow_left),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildActionTopbar('Search', Feather.search),
            SizedBox(width: 16.0),
            _buildActionTopbar('Cart', Feather.shopping_cart),
          ],
        ),
      ],
    );
  }

  Widget _buildActionTopbar(title, icon) {
    return NeumorphicButton(
      onPressed: () => null,
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 6.0,
        intensity: .75,
        color: title == 'Back' ? colorBlack : mC,
      ),
      padding: EdgeInsets.all(width / 25.0),
      child: Icon(
        icon,
        color: title == 'Back' ? mC : colorBlack,
        size: width / 18.0,
      ),
      duration: Duration(milliseconds: 200),
    );
  }

  Widget _buildListCategories() {
    return Container(
      height: width * .135,
      width: width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return NeumorphicButton(
            onPressed: () => null,
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(8.0),
              ),
              depth: 4.0,
              intensity: .65,
              color: mC,
            ),
            margin: EdgeInsets.only(right: 12.0, bottom: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    color: colorDarkGrey,
                    fontFamily: 'Lato',
                    fontSize: width / 30.0,
                  ),
                ),
              ],
            ),
            duration: Duration(milliseconds: 200),
          );
        },
      ),
    );
  }

  Widget _buildTitle(title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: colorTitle,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
            fontSize: width / 22.5,
          ),
        ),
        Text(
          'viewall'.trArgs(),
          style: TextStyle(
            color: colorPrimary,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
            fontSize: width / 26.0,
          ),
        ),
      ],
    );
  }

  Widget _buildPopularStore(context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.width * .42,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 12.0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: HorizontalStoreCard(),
          );
        },
      ),
    );
  }
}
