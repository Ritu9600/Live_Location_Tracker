import 'package:flutter/material.dart';

import 'package:live_location_tracker/PAGES/home_page.dart';
import 'package:live_location_tracker/PAGES/profile.dart';
import 'package:live_location_tracker/PAGES/pages.dart';
import 'package:live_location_tracker/PAGES/Image_slider.dart';
import 'package:live_location_tracker/PAGES/detail_page.dart';
import 'package:live_location_tracker/PAGES/login_page.dart';
import 'package:live_location_tracker/PAGES/Portfolio.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "Live LOcation",
        home : Register()
    );
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}): super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
 int _selectedItem = 0;
 var _pages = [Products(), Portfolio(), HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Live Location Tracker"),backgroundColor: Colors.lightBlue),
      body: Center(child: _pages[_selectedItem],),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('HOME'),backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), title: Text('PORTFOLIO'),backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_upward_outlined), title: Text('GROUPS'),backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('PROFILE'),backgroundColor: Colors.lightBlue),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
    );
  }
}


