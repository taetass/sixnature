import 'package:flutter/material.dart';
import 'package:sixnature_app/widget/banner.dart';
import 'package:sixnature_app/widget/banner_button.dart';
import 'package:sixnature_app/widget/header.dart';
import 'package:sixnature_app/widget/main_menu.dart';
import 'package:sixnature_app/widget/new_%20product.dart';
import 'package:sixnature_app/widget/promotion.dart';
import 'package:sixnature_app/widget/sale_product.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = TrackingScrollController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: 80),
                      BannerSection(),
                      BannerButton(),
                      Promotion(),
                      SaleProduct(),
                      //SaleItems(),
                      NewProduct(),
                      MainMenu(),
                      Container(
                        color: Colors.lightBlue[800],
                        child: Text('xxxx'),
                        height: 1500,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Header(_scrollController),
          //showWidgets[index],
          
        ],
      ),
      //bottomNavigationBar: myButtonNavBar(),
    );
  }

 
}
