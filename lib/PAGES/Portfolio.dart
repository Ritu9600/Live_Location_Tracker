import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget{
  @override
  PortfolioState createState() =>  PortfolioState();
}
class PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 100.0,
          backgroundColor: Colors.lightBlue,
          title: const Text('Portfolio', style: TextStyle(
            color: Colors.white,

          )),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Current Value',

              ),//Text('Rs 276',style:TextStyle(fontSize: 15, color: Colors.black)),
              Tab(
                text: 'Invested Value',
              ),
              Tab(
                text: 'Gain/Loss',
              ),

            ],

          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.compare_arrows),
              tooltip: 'Show Searchbar',
              onPressed: () {
              },
            ),
            Text('LIMIT ORDERS', style: TextStyle(color:Colors.black, fontSize: 15),),
          ],
        ),
        body:
         ListView.builder(
          itemBuilder: (context, index){
            return Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left:10.0, right:10.0),
              child:
              new Card(
                child: Padding(
                  padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left:20.0, right:0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      /* IconButton(
                   icon: const Icon(Icons.home),
                   color: Colors.red,
                    tooltip: 'Show Searchbar'),*/

                      Text( 'Elrond',
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('BTC                                                                   -0.78%',
                          style: TextStyle(
                            //padding: const EdgeInsets.all(5.0),
                            fontSize:16,
                            color: Colors.grey.shade600,
                          )),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
        ),

      ),
    );
  }
}