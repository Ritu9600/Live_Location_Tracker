import 'package:flutter/material.dart';
import 'package:live_location_tracker/main.dart';
import 'dart:math';
import 'package:live_location_tracker/PAGES/Image_slider.dart';

class DetailPage extends StatefulWidget{
  @override
  DetailPageState createState() => DetailPageState();
}
class DetailPageState extends State<DetailPage>{
  String _result = "";
  final TextEditingController _area = TextEditingController();
  final TextEditingController _price = TextEditingController();

  //final TextEditingController  prod_price = TextEditingController();
  //final TextEditingController _ = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Page"),
        backgroundColor: Colors.lightBlue,
      ),
      body:
      Center(
        child: Container(

          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top:20.0, bottom:20.0,left:20, right:20.0),
                child: TextField(
                  controller: _area,
                  decoration: InputDecoration(
                    labelText:" Enter the Total Area in Sqft"
                  ),
                ),
              ),
              /*Container(
                padding: EdgeInsets.only(top:20.0, bottom:20.0,left:20, right:20.0),
                child: TextField(
                 // controller: prod_PropertyName,
                  decoration: InputDecoration(
                      labelText:" Please Enter The Property Name"
                  ),
                ),
              ),*/
              Container(
                padding: EdgeInsets.only(top:20.0, bottom:20.0,left:20, right:20.0),
                child: TextField(
                    controller: _price,
                  decoration: InputDecoration(
                      labelText:" Please Enter The Price of the Property(in \Rs)"
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: RaisedButton(
                  onPressed: _handleCalculation,
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text('Calculate', style: TextStyle(fontSize: 18, color: Colors.white ),
                  ),
                  padding: EdgeInsets.only(top:10,bottom: 10,left: 14,right: 14),
                ),
              ),
              ResultsWidget(_result)
            ],
          ),
        ),
      ),
    );
  }
  void _handleCalculation(){

    double A =0.0;
    double P = double.parse(_area.text);
    int r = int.parse(_price.text);


   // double x = double.parse( prod_price.text);
    A = r/P;
    _result =  A.toStringAsFixed(2);
    setState((){

    });
  }

  Widget ResultsWidget (Result){
    var x = Database.product_list;
    int itemCount = x.length;

    bool canShow = false;
    String _result = Result;
    if(_result.length > 0){
      canShow = true;
    }
    return
    Container(
      margin: EdgeInsets.only(top:40.0),
      child: canShow ? Column(
        children: [
          Text("The price of 1 sqft is: Rs",style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          /*Container(
            child: Text(prod_PropertyName,style: TextStyle(
              fontSize: 50.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),*/
          Container(
            child: Text(_result,style: TextStyle(
              fontSize: 50.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ],
      ): Container(),
    );

  }
}