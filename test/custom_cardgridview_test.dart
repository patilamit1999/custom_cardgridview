import 'package:flutter_test/flutter_test.dart';

import 'package:custom_cardgridview/custom_cardgridview.dart';



import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:custom_cardgridview/card_page.dart';

void main() => runApp(MyApp());

class MyApp extends GridCard {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        
      ),
      body: GridCard(cardLayout:
      [
        CustomCard(
          imgPath: "assets/red.png",
          name: "oppo",
          price: "12345",
          isFavorite: false,
          added: false,
        ),
        CustomCard(
          imgPath: "assets/real.png",
          name: "padu",
          price: "12345",
          isFavorite: false,
          added: false,
          onPressed:(){
            //On tap on card Redirect To
          },
        )
      ]
      )
    );
  }
}
