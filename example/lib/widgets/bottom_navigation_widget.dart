import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  int _selectedIndex = 0;

  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  BottomNavigationBar buildButtonNavigationBar {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value){
        setState((){
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: "Month",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Week",
          icon: Icon(Icons.school),
        ),
        BottomNavigationBarItem(
          label: "Day",
          icon: Icon(Icons.school),
        ),
        BottomNavigationBarItem(
          label: "Weater",
          icon: Icon(Icons.school),
        ),
      ],
    )
  }
}
