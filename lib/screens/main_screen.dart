import 'package:flutter/material.dart';
import 'package:group_52_session_8/screens/home_screen.dart';
import 'package:group_52_session_8/screens/profile_screen.dart';
import 'package:group_52_session_8/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  List<Widget> screens = [
    SearchScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",

                // child: ,
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",

                // child: ,
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",

                // child: ,
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
            ],
          ),
        ),
        body: TabBarView(children: screens),

        // body: screens[index],
        // bottomNavigationBar: NavigationBar(
        //   indicatorColor: Colors.amber,
        //   animationDuration: Duration(seconds: 2),
        //   backgroundColor: Colors.black,
        //   selectedIndex: index,
        //   onDestinationSelected: (i) {
        //     setState(() {
        //       index = i;
        //     });
        //   },
        //   destinations: [
        //     NavigationDestination(
        //       icon: Icon(Icons.search),
        //       label: "Search",
        //       selectedIcon: Icon(
        //         Icons.search,
        //         color: Colors.amber,
        //       ),
        //     ),
        //     NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        //     NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        //   ],
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   showUnselectedLabels: false,
        //   backgroundColor: Colors.deepOrange,
        //   selectedItemColor: Colors.white,
        //   // unselectedItemColor: Colors.black26,
        //   currentIndex: index,
        //   onTap: (i) {
        //     setState(() {
        //       index = i;
        //     });
        //   },
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.search),
        //       label: "Search",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: "Profile",
        //     )
        //   ],
        // ),
      ),
    );
  }
}
