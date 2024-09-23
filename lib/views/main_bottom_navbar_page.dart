import 'package:flutter/material.dart';
import 'package:statefulwidget_session/views/cart_page.dart';
import 'package:statefulwidget_session/views/chat_page.dart';
import 'package:statefulwidget_session/views/favoraite_page.dart';
import 'package:statefulwidget_session/views/history_page.dart';
import 'package:statefulwidget_session/views/home_page.dart';

class MainBottomNavbar extends StatefulWidget {
  const MainBottomNavbar({super.key});

  @override
  State<MainBottomNavbar> createState() => _MainBottomNavbarState();
}

class _MainBottomNavbarState extends State<MainBottomNavbar> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const HomePage2(),
    const ChatPage(),
    const CartPage(),
    const FavoraitePage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      bottomNavigationBar: NavigationBar(
        elevation: 10,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.pink,
        shadowColor: Colors.grey,
        indicatorColor: Colors.yellow,
        surfaceTintColor: Colors.black,
        animationDuration: const Duration(
          seconds: 4,
        ),
        // indicatorShape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(2),
        // ),
        indicatorShape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.chat), label: 'Chats'),
          NavigationDestination(
              icon: Icon(Icons.local_grocery_store), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorite'),
          NavigationDestination(icon: Icon(Icons.history), label: 'History'),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
