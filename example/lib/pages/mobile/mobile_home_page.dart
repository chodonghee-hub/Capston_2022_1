import 'package:flutter/material.dart';

import '../../extension.dart';
import '../day_view_page.dart';
import '../month_view_page.dart';
import '../week_view_page.dart';
import '../firebase_login_widget.dart';

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
            // ElevatedButton(
            //   onPressed: () => context.pushRoute(WeekViewDemo()),
            //   child: Text("Week View"),
            // ),
            MonthViewPageDemo(),
            DayViewPageDemo(),
            WeekViewDemo(),
            Login(),

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
              label: "월간",
              icon: Icon(Icons.calendar_month),
            ),
            BottomNavigationBarItem(
              label: "주간",
              icon: Icon(Icons.calendar_view_week),
            ),
            BottomNavigationBarItem(
              label: "일간",
              icon: Icon(Icons.calendar_today),
            ),
            BottomNavigationBarItem(
              label: "로그인",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label : "검색",
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),

    );
  }
}
