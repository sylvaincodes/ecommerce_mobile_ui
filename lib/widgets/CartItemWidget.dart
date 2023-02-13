import 'package:ecommerce_mobile_app/widgets/CartItemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            //proprietes
            height: 110,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),

            // Contents
            child: Row(
              children: [
                Radio(
                    value: "",
                    groupValue: "",
                    activeColor: Colors.blue,
                    onChanged: (index) {}),
                Container(
                  // Proprietes
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  //Contents
                  child: Image.asset("images/$i.png", width: 20, height: 20),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Samba",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text("\$55",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ],
                    )),
                Spacer(),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 10)
                                    ]),
                                child: Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 10)
                                    ]),
                                child: Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            ],
                          )
                        ])),
              ],
            ),
          )
      ],
    );
  }
}
