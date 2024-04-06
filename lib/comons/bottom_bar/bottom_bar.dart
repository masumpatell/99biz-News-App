import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../screens/delivery_1/delivery.dart';
import '../../screens/dining_2/dining.dart';
import '../../screens/money_3/money.dart';

class ButtomBarScreen extends StatefulWidget {
  const ButtomBarScreen({super.key});

  @override
  State<ButtomBarScreen> createState() => _ButtomBarScreenState();
}

class _ButtomBarScreenState extends State<ButtomBarScreen> {
  int _selectedIndex = 0; // Index of the currently selected screen

  final List<Widget> _screens = [
    const DeliveryScreen(),
    const DiningScreen(),
    const MoneyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        unselectedItemColor: Colors.black.withOpacity(0.2),
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.fast_food,
              color: _selectedIndex == 0 ? Colors.redAccent : Colors.black.withOpacity(0.2),
            ),
            label: "Delivery",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.restaurant,
              color: _selectedIndex == 1 ? Colors.redAccent : Colors.black.withOpacity(0.2),
            ),
            label: "Dining",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.wallet,
              color: _selectedIndex == 2 ? Colors.redAccent : Colors.black.withOpacity(0.2),
            ),
            label: "Money",
          ),
        ],
      ),
    );
  }
}
