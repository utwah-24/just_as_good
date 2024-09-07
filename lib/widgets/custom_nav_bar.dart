// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:just_as_good/screens/home_screen.dart';

class CustomHome extends StatefulWidget {
  // final String userEmail;
  const CustomHome({
    super.key,
  });

  @override
  State<CustomHome> createState() => _CustomHomeState();
}

class _CustomHomeState extends State<CustomHome> {
  final PageController _pageController = PageController();
  double selected = 0;
  late List<Widget> pageViews;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        selected = _pageController.page ?? 0;
      });
    });
    // Initialize pageViews after the widget has been fully initialized
    pageViews = <Widget>[
      TheHomeScreen()
      //just add your pages here
    ];
    // Rest of the initState() method remains the same...
  }
  // ignore: recursive_getters

  Future<void> switchPage(int page) async {
    await _pageController.animateToPage(
      page,
      duration: const Duration(
        milliseconds: 200,
      ),
      curve: Curves.easeInOut,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("Title"),
      // ),
      body: PageView(
        controller: _pageController,
        children: pageViews,
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 3,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavItem(
              label: "Home",
              onTap: () => switchPage(0),
              iconData: Icons.home,
              isActive: selected == 0,
            ),
            BottomNavItem(
              label: "Products",
              onTap: () => switchPage(1),
              iconData: Icons.shopping_cart,
              isActive: selected == 1,
            ),
            BottomNavItem(
              
              label: "orders",
              onTap: () => switchPage(2),
              iconData: Icons.receipt,
              isActive: selected == 2,
            ),
            BottomNavItem(
              label: "Settings",
              onTap: () => switchPage(3),
              iconData: Icons.settings,
              isActive: selected == 3,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.iconData,
    required this.label,
    required this.onTap,
    required this.isActive,
  });

  final String label;
  final Function() onTap;
  final IconData iconData;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: isActive ? Colors.black : Colors.black54,
            ),
            Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.black : Colors.black54,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
