import 'package:flutter/material.dart';
import 'package:shopywell/screens/profile_page.dart';
import 'package:shopywell/widgets/carosil_slider_widget.dart';
import 'package:shopywell/widgets/category_widget.dart';
import 'package:shopywell/widgets/deal_of_the_day_widget.dart';
import 'package:shopywell/widgets/new_arrival_widget.dart';
import 'package:shopywell/widgets/product_list_widget.dart';
import 'package:shopywell/widgets/special_offer_widget.dart';
import 'package:shopywell/widgets/trending_product_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("shopy", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            Text("well", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
            },
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person, color: Colors.black),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search any Product...",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Featured", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(Icons.sort, color: Colors.black),
                      SizedBox(width: 10),
                      Icon(Icons.filter_list, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CategoryWidget(),
            SizedBox(height: 10),
            CarosilSliderWidget(),
            SizedBox(height: 10),
            DealOfTheDayWidget(),
            SizedBox(height: 10),
            ProductListWidget(),
            SizedBox(height: 10),
            SpecialOfferWidget(),
            SizedBox(height: 10),
            TrendingProductsWidget(),
            SizedBox(height: 10),
            NewArrivalsWidget(),
          ],
        ),
      ),

    );
  }










}