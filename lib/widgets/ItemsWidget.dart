import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      return GridView.count(
        childAspectRatio: 0.68,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,

        children: [

          for( int i=1; i <8 ; i++ )
            Container(
              padding: EdgeInsets.only( left: 15 , right: 15 , top: 15 ),
              margin: EdgeInsets.symmetric( vertical: 5, horizontal: 10),
              decoration : BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),

              child: Column(  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)

                          ),

                          child: Text('-50%' , style: TextStyle(fontSize: 14 , color: Colors.white, fontWeight: FontWeight.bold ) ), 
                        ),
                        Icon(Icons.favorite_border, color : Colors.red)
                      ],
                    ),

                    InkWell(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.all(8),

                        child: Image.asset("images/$i.png" , height: 90, width: 90),
                      ),
                    ),
                    Container(

                      alignment: Alignment.centerLeft,
                      child: Text("Samba" , style:  TextStyle( color: Colors.blue, fontSize: 15 , fontWeight: FontWeight.bold )  ),
                    ),
                    
                    Container(
                      child: Text("Chausseures Samba pour les soirées" , style:  TextStyle( color: Colors.black, fontSize: 12 , fontWeight: FontWeight.normal )  ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5)  ,
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$55"  , style: TextStyle( fontSize: 15 , color: Colors.blue , fontWeight: FontWeight.bold ) ),
                          Icon(Icons.shopping_cart_checkout , color: Colors.blue )
                        ],
                      ),
                      ) 
 
                  ],
              ),

            ),
        ],
        
      );

  }
}