import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;




class HomeAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding:  EdgeInsets.all(25),
      child: Row(children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Color(0xff4c53a5),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "Shopping",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xff4c53a5),
            ),
          ),
          ),
          Spacer(),
          Badge(
           // badgeColor: Colors.red,
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),),
          //padding: EdgeInsets.all(7.0),
            child: InkWell(
            onTap:() {},
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color:  Color(0xff4c53a5),
            ),
            ),
          ),
      ],
      ),
    );
  }
}