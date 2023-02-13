import 'package:flutter/material.dart';

class ItemBar extends StatelessWidget {
  const ItemBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.blue,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(" Produit",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ),
          Spacer(),
          Icon(Icons.favorite, size: 30, color: Colors.red)
        ],
      ),
    );
  }
}
