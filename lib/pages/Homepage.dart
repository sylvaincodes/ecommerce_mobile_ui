import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/widgets/HomeAppBar.dart';
import 'package:ecommerce_mobile_app/widgets/CategoriesWidget.dart';
import 'package:ecommerce_mobile_app/widgets/ItemsWidget.dart';

class Homepage extends StatelessWidget {
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: ListView(children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding:  EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal : 15),
                  padding: EdgeInsets.symmetric(horizontal : 15),
                  height: 50,
                  decoration: BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          margin: EdgeInsets.only(
                            left: 5
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Rechercher ici...."
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.camera_alt,
                          size: 27,
                          color: Colors.blue
                        ),

                      ],
                    ),
                ),

            Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text("Catégories",
            style: TextStyle(
              fontSize: 20 , fontWeight : FontWeight.bold,color: Colors.blue 
            ))
          ),

          CategoriesWidget(),

          Container(

            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric( horizontal: 10 , vertical: 20),
            child: Text("Meilleurs ventes" ,
            style:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),),
          ),

          ItemsWidget(),

              ],
            ),
          ),
         
        ],),

        bottomNavigationBar: CurvedNavigationBar(

          onTap: (index){},
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          height: 70,
          // index: 2,
          animationCurve: Curves.fastLinearToSlowEaseIn,
          items: 
          [
          Icon( 
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          )
        ]),
      );
    }
}