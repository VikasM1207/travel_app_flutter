import 'package:flutter/material.dart';
import 'bar_page.dart';
import 'search_page.dart';
import 'profile_page.dart';
import '../home_page.dart';

class MainPage extends StatefulWidget {

    MainPage({Key? key}) : super(key: key);

    @override
    _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {

    List pages = [
        HomePage(),
        //BarPage(),
        SearchPage(),
        ProfilePage()
    ];

    int currentIndex = 0;

    void onTap (int index) {
        setState(() {
            currentIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        
        return Scaffold(
            backgroundColor: Colors.white,
            body: pages[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                selectedFontSize: 0,
                unselectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Colors.black54,
                unselectedItemColor: Colors.grey.withOpacity(0.5),
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                onTap: onTap,
                currentIndex: currentIndex,
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                    ),
                    // BottomNavigationBarItem(
                    //     icon: Icon(Icons.bar_chart_sharp),
                    //     label: "Bar",
                    // ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: "Search",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "Profile",
                    ),
                ],
            ),
        );
    }
}