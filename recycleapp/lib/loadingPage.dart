import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'all.dart';

class LoadingPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.nature,
                size: 40,
                color: Colors.green
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan> [
                    new TextSpan(
                      text: "Take part in the cause\nto"

                    ),
                    new TextSpan(
                      text: " save out home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ]
                )
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: ElevatedButton(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30
                ),
                onPressed: () {
                  print("move");
                  Navigator.push(
                    context, 
                    PageTransition(
                      child: HomePage(),
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 600)
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.green,
                  padding: EdgeInsets.all(20)
                ),
              ),
            )
          )
        ],
      )
    );
  }
}