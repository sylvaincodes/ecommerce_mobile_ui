import 'package:flutter/material.dart';


class CartBottomNavbar extends StatelessWidget {
  const CartBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20 ,vertical: 15) ,
          height: 130,

          child: Column(

            mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total" , style: TextStyle( fontSize: 20 , color: Colors.blue , fontWeight:  FontWeight.bold )),
                  Text("\$250"  ,style: TextStyle( fontSize: 30 , color: Colors.blue , fontWeight:  FontWeight.bold )),
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10,  bottom: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),

                  child: Text("Payer"  , style: TextStyle(  fontSize: 30 , color: Colors.white),),
              )
            ],
          ),
        ),
    );
  }
}