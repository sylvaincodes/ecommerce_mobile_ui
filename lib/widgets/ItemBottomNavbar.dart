import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemBottomNavbar extends StatelessWidget {
  const ItemBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Row(

          
          children: [
            Container(
              child: Text("\$250",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
            ),
            Spacer(),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(CupertinoIcons.cart_badge_plus),
                label: Text("Ajouter au panier",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all( EdgeInsets.symmetric(horizontal: 10, vertical: 15)),

                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                  )
                ),
                        )
          ],
        ),
      ),
    );
  }
}
