import 'package:flutter/material.dart';
import 'all.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class MainUI extends StatefulWidget{
  _MainUIState createState() => _MainUIState();
}

class TestFunction extends StatelessWidget {
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('TestData');
    
    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        List<DocumentSnapshot> d = snapshot.data.docs;
        return CarouselSlider.builder(
          itemCount: 2, 
          itemBuilder: (context, int index) {
            return Card(d[index]);
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 1.0,
            initialPage: 0,
          ),
        );
      },
    );
  }
}

class Card extends StatelessWidget {
  final DocumentSnapshot values;
  Card(this.values);
  

  

  Widget build(BuildContext context) {
    final Map <String, dynamic> doc = values.data;
    double value = MediaQuery.of(context).size.width;
    return Container( 
      width: (value / 10) * 8, 
      margin: EdgeInsets.fromLTRB((value / 10) * 0.5, 0, 50, 50),
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
            child: SizedBox()
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
            child: SizedBox()
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
          flex: 1,
          child: SizedBox()
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Hello Team",
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
          child: TestFunction()          
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