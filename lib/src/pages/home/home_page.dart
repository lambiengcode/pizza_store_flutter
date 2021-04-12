import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_pizza_store/src/pages/home/widgets/horizontal_store_card.dart';
import 'package:flutter_pizza_store/src/public/constant.dart';
import 'package:flutter_pizza_store/src/public/styles.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> categories = [
    {'name': 'Burgur', 'image': 'images/burger.png'},
    {'name': 'Pizza', 'image': 'images/pizza.png'},
    {'name': 'Chicken', 'image': 'images/fried-chicken.png'},
    {'name': 'Potato Chips', 'image': 'images/french-fries.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: mC,
        child: Column(
          children: [
            SizedBox(height: height / 18.0),
            _buildTopbar(),
            SizedBox(height: 22.0),
            Container(
              height: height * .16,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://pizzahut.vn/PizzaHutApi/images/My_Box_129k.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 32.0),
            _buildTitle('Categories'),
            SizedBox(height: 24.0),
            _buildListCategories(),
            SizedBox(height: 18.0),
            _buildTitle('Popular Now'),
            SizedBox(height: 20.0),
            _buildPopularList(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopbar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildActionTopbar('Search', Feather.align_left),
          _buildStoreInfo(),
          _buildActionTopbar('Cart', Feather.map_pin),
        ],
      ),
    );
  }

  Widget _buildStoreInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Pizza Hut',
          style: TextStyle(
            color: colorPrimary,
            fontSize: width / 13.25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Caveat',
          ),
        ),
      ],
    );
  }

  Widget _buildActionTopbar(title, icon) {
    return NeumorphicButton(
      onPressed: () => null,
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(16.0),
        ),
        depth: 1.0,
        intensity: .4,
        color: mC,
      ),
      padding: EdgeInsets.all(width / 28.0),
      child: Icon(
        icon,
        color: colorPrimary,
        size: width / 18.0,
      ),
      duration: Duration(milliseconds: 200),
    );
  }

  Widget _buildListCategories() {
    return Container(
      height: width * .145,
      width: width,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20.0, right: 12.0),
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
          BorderRadius.circular(30.0),
        ),
        depth: 4.0,
        intensity: .65,
        color: colorPrimary,
      ),
      margin: EdgeInsets.only(right: 12.0, bottom: 6.0),
      padding: EdgeInsets.only(left: 28.0, right: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: width / 13.5,
            width: width / 13.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(categories[index]['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            categories[index]['name'],
            style: TextStyle(
              color: mC,
              fontFamily: 'Lato',
              fontSize: width / 30.0,
              fontWeight: FontWeight.bold,
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
          BorderRadius.circular(30.0),
        ),
        depth: 4.0,
        intensity: .65,
        color: mC,
      ),
      margin: EdgeInsets.only(right: 12.0, bottom: 6.0),
      padding: EdgeInsets.only(left: 28.0, right: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: width / 13.5,
            width: width / 13.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(categories[index]['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            categories[index]['name'],
            style: TextStyle(
              color: colorDarkGrey,
              fontFamily: 'Lato',
              fontSize: width / 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      duration: Duration(milliseconds: 200),
    );
  }

  Widget _buildTitle(title) {
    return Padding(
      padding: EdgeInsets.only(left: 22.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: colorTitle,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              fontSize: width / 20.5,
            ),
          ),
          title == 'Categories'
              ? Container()
              : Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.amber[700],
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        fontSize: width / 26.0,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Icon(
                      Feather.plus_square,
                      color: Colors.amber[700],
                      size: width / 22.0,
                    ),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _buildPopularList() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return HorizontalStoreCard();
        },
      ),
    );
  }
}
