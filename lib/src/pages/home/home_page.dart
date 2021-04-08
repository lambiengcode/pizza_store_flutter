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
    'Seafood',
    'Cheese',
    'Beep',
    'Sausage',
    'Chicken',
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
        _buildStoreInfo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildActionTopbar('Search', Feather.search),
            SizedBox(width: 15.0),
            _buildActionTopbar('Cart', Feather.map_pin),
          ],
        ),
      ],
    );
  }

  Widget _buildStoreInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: width * .125,
          width: width * .125,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/logo_app.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pizza Hut',
              style: TextStyle(
                color: colorPrimary,
                fontSize: width / 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Caveat',
              ),
            ),
            Text(
              'Now You’re Eating!',
              style: TextStyle(
                color: colorDarkGrey,
                fontSize: width / 28.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato',
              ),
            ),
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
        depth: 4.0,
        intensity: .65,
        color: title == 'Back' ? colorBlack : mC,
      ),
      padding: EdgeInsets.all(width / 25.0),
      child: Icon(
        icon,
        color: title == 'Back' ? mC : colorDarkGrey,
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
          return index == 0
              ? _buildActionActive(context, index)
              : _buildActionInactive(context, index);
        },
      ),
    );
  }

  Widget _buildActionActive(context, index) {
    return NeumorphicButton(
      onPressed: () => null,
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(8.0),
        ),
        depth: 4.0,
        intensity: .65,
        color: colorPrimary,
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
              color: mC,
              fontFamily: 'Lato',
              fontSize: width / 30.0,
            ),
          ),
        ],
      ),
      duration: Duration(milliseconds: 200),
    );
  }

  Widget _buildActionInactive(context, index) {
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
          'View All',
          style: TextStyle(
            color: colorPrimary,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
            fontSize: width / 28.0,
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
