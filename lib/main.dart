import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/pages/Homepage.dart';

void main()  => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext  context){
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme : ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Nunito'
          ),
          routes : {
            "/" : (context) => Homepage()
          },
        );
  }
}