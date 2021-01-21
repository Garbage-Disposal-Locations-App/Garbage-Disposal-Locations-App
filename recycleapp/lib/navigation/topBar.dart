import 'package:flutter/material.dart';
import 'dart:ui';

class TopBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45)
        ),
        border: Border.all(color: Colors.white.withOpacity(0.6)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white.withOpacity(0.4), Colors.white.withOpacity(0.2)]
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Icon(
              Icons.eco,
              size: 35,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox()
          ),
          Expanded(
            flex: 2,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: Text('M'),
            )
          ),
          
        ]
      )
     );
  }
}