import 'package:first_app/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'calendar_widget.dart';

// ignore: camel_case_types
class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int  _selectedindex = 0;
  static final List_widgetOptions =<Widget>[
    const HomeScreen(),
    const Text("Search"),
    const EventCalendarScreen(),
    const Text("Profile"),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: List_widgetOptions[_selectedindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        elevation:10,
        showSelectedLabels: false ,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        type:BottomNavigationBarType.fixed,
        unselectedItemColor: const Color.fromRGBO(205, 88, 88 ,10),
        items: const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)
            ,label: "Home"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
            ,label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.water_drop),
            activeIcon: Icon(Icons.water_drop)
            ,label: "Period"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ,activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ,label: "Profile",),
      ],
      ),
    );
  }
}
