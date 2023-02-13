import 'package:ecommerce_mobile_app/widgets/ItemBar.dart';
import 'package:ecommerce_mobile_app/widgets/ItemBottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {

    List colors = [Colors.red, Colors.green, Colors.yellow ];

    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemBar(),
          Padding(
            padding: EdgeInsets.all(30),
            child: Image.asset("images/1.png", height: 220),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 20.0,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/arc_demo'),
              child: Container(
                color: Colors.white,
                height: 600,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            "Samba",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1, bottom: 5),
                      child: Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemSize: 15,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.favorite_outlined,
                              color: Colors.blue,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        )
                                      ]),
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                  )),
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text("01",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0, 3),
                                        )
                                      ]),
                                  child: Icon(
                                    CupertinoIcons.plus,
                                    size: 18,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Text(
                          "L’e-magasin vend aussi des chaussures de marche et de sport pour les femmes qui aiment bouger au quotidien.",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )),


                    Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "Taille : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                for (int i = 1; i < 6; i++)
                                  Container(
                                      height: 30,
                                      width: 30,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3),
                                            )
                                          ]),
                                      child: Text(
                                        i.toString(),
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue),
                                      )),
                              ],
                            )
                          ],
                        )),
     
                    Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              "Couleur : ",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < colors.length ; i++)
                                  Container(
                                      height: 30,
                                      width: 30,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: colors[i],
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3),
                                            )
                                          ]),
                                      ),
                              ],
                            )
                          ],
                        )),



                  ]),
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: ItemBottomNavbar(),
    );
  }
}
