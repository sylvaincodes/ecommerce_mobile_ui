import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          for( int i=1; i<8; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8 ), 
            padding : EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
            decoration: BoxDecoration(
              color:  Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset("images/$i.png", width: 40, height: 40),
                Text("Sandal" , style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}