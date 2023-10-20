import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
               _buildCategory("Heels", 1),
          _buildCategory("Jam Tangan", 2),
          _buildCategory("Tas", 3),
          _buildCategory("Sepatu", 6)
        ],
      ),
    );
  }

  Widget _buildCategory(String categoryName, int imageIndex) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/$imageIndex.png", width: 40, height: 40),
          Text(
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(0xff4c53a5),
            ),
          ),
        ],
      ),
    );
  }
}