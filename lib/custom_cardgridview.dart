import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final List<Widget> cardLayout;

  const GridCard({
    Key key,
    @required this.cardLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children:
                 cardLayout,
                
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }
}