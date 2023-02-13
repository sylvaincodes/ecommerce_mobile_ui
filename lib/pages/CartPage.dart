import 'package:ecommerce_mobile_app/widgets/CartBottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/widgets/CartAppBar.dart';
import 'package:ecommerce_mobile_app/widgets/CartItemWidget.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        CartAppBar(),
        Container(

          height: 520,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 249, 249),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: Column(
            children: [
              CartItemWidget(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Ajouter un code coupon",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
    bottomNavigationBar : CartBottomNavbar(),
    );
  }
}
