import 'package:flutter/material.dart';
import 'all.dart';

class BottomNav extends StatefulWidget {

  _BottomNavState createState() => _BottomNavState();
}

class SubText extends StatelessWidget {
  int current;
  int actual;
  String text;
  SubText(this.current, this.actual, this.text);
  Widget build(BuildContext context) {
    if (this.current == this.actual) {
      return Align(
        alignment: Alignment.center,
        child: Text(
          this.text,
        )
      );
    } else {
      return Container();
    }
  }
}

class _BottomNavState extends State<BottomNav> {
  int control = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: control == 0 ? Colors.green : Colors.black
                ),

                onPressed: () {
                  print("0");
                  setState(() {
                    control = 0;
                  });
                }
              ),
              SubText(control, 0, "History")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.location_on_outlined,
                  size: 30,
                  color: control == 1 ? Colors.green : Colors.black
                ),
                onPressed: () {
                  print("1");
                  setState(() {
                    control = 1;
                  });
                }
              ),
              SubText(control, 1, "Map")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: control == 2 ? Colors.green : Colors.black
              ),
              onPressed: () {
                print("2");
                setState(() {
                  control = 2;
                });
              }
            ),
              SubText(control, 2, "Account")
            ],
          ),
          
          
          
        ]
      )
    );
  }
}