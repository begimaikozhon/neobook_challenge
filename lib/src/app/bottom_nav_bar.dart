import 'package:flutter/material.dart';
import 'package:neobook_challenge/src/screen/busket_screen.dart';
import 'package:neobook_challenge/src/screen/history_screen.dart';
import 'package:neobook_challenge/src/screen/home_screen.dart';
import 'package:neobook_challenge/src/screen/info_screen.dart';
import 'package:neobook_challenge/src/themes/app_colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const BusketScreen(),
    const HistoryScreen(),
    const InfoScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: BottomNavigationBar(
          selectedItemColor: AppColors.green,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/home-03.png')),
              label: 'Главная',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/bag-03.png')),
              label: 'Корзина',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/clock-01.png')),
              label: 'История',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/help-square-contained.png')),
              label: 'Инфо',
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
