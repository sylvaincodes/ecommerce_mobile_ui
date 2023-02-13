import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort, size:30 ,color: Colors.blue),

          Padding ( padding : EdgeInsets.only( left: 20,),
              child: Text("Ecommerce" , style:  TextStyle( fontSize: 20, fontWeight:  FontWeight.bold , color: Colors.blue )),
          ),
         Spacer(),
         badges.Badge(
            badgeContent: Text("3", style: TextStyle( color: Colors.white  ),), 
            badgeStyle: badges.BadgeStyle(badgeColor: Colors.red ), 
            
            child: InkWell(  onTap:(){
              Navigator.pushNamed(context, "cartPage");
            }, 
              child: Icon(Icons.shopping_bag_outlined , size: 40 , color: Colors.blueAccent),
            ),
            
          )
         ],
      )
    );
  }
}
