import 'package:flutter/material.dart';

import '../../extension.dart';
import '../day_view_page.dart';
import '../month_view_page.dart';
import '../week_view_page.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Calendar Page"),
          centerTitle: true,
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            MonthViewPageDemo(),
            DayViewPageDemo(),
            WeekViewDemo(),
            WeekViewDemo(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.school),
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
              label: "Home",
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),

    );
  }
}
