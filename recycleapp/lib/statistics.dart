import 'dart:async';

import 'package:flutter/material.dart';
import 'all.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainUI extends StatefulWidget{
  _MainUIState createState() => _MainUIState();
}

class Card extends StatelessWidget {
  final String title;
  final int count;
  final String subText;
  Card(this.title, this.subText, this.count);

  Widget build(BuildContext context) {
    return Container( 
      width: double.maxFinite,
      height: double.maxFinite,
      margin: EdgeInsets.all(2.0), 
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
      ), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "$title",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                letterSpacing: 1
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: SizedBox(),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$count",
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "recycled\n$subText",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff919191),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1.1
                  ),
                ),
              ],
            ),
          )
        ],
      )
    ); 
  }
}

class _MainUIState extends State<MainUI> {
  int index = 0;
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: SizedBox()
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Hello Nishanth",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              fontFamily: "Arial"
            ),
          ),
        ),
        Expanded ( 
          flex: 9,
          child: ListView( 
          children: [ 
            CarouselSlider( 
                items: [ 
                  Card("Plastic", "plastic", 135),
                  Card("Paper", "paper", 20),
                  Card("Glass", "glass", 100)
                ], 
                
              //Slider Container properties 
                options: CarouselOptions( 
                  height: (MediaQuery.of(context).size.height / 8) * 5, 
                  enlargeCenterPage: true, 
                  autoPlay: false,
                  autoPlayCurve: Curves.fastOutSlowIn, 
                  enableInfiniteScroll: false, 
                  autoPlayAnimationDuration: Duration(milliseconds: 800), 
                  viewportFraction: 0.8, 
                  
                ), 
              ), 
            ], 
          ),
        ),
      ],
    );
  }
}

class CardList {
}


class StatsPage extends StatefulWidget{
  _CreateStatsPageState createState() => _CreateStatsPageState();
}
  
class _CreateStatsPageState extends State<StatsPage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40)
                        ),
                        color: Color(0xffacd8e3)
                      ),
                      child: MainUI()
                    ),
                    TopBar(0, 0, 0, Color(0xff58a31f))
                  ],
                )
              ),
              Expanded(
                flex: 1,
                child: BottomNav(0)
              )
            ]
          )
        )
      )
    );
  }
}