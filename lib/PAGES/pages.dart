import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_location_tracker/PAGES/detail_page.dart';
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(body: Center(child: Text('Default'),),);
  }
}
class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Detail Page'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ]
      ),
      body:
      Center(child: Container(
        padding: EdgeInsets.fromLTRB(0, 500, 0, 0) ,
      child:RaisedButton(
        padding: EdgeInsets.only(top: 10.0,bottom: 10.0, left: 160.0, right: 160.0),
        visualDensity: null,
        child: Text("BUY",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        color: Colors.lightBlue,
        onPressed: (){
          Navigator.of(context).push (MaterialPageRoute(
              builder : (context) => DetailPage()
          ));
        },
      ),
      ),
      ),
    );
  }
}