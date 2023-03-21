import 'package:acacos/helpers/colors.dart';
import 'package:acacos/screens/main_screens/discover_screen.dart';
import 'package:acacos/screens/main_screens/home_screen.dart';
import 'package:acacos/screens/main_screens/notification_screen.dart';
import 'package:acacos/screens/main_screens/profil_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedSwitcher(
          duration: animationDuration,
          child: currentIndex == 0
              ? const HomeScreen()
              : currentIndex == 1
                  ? const DiscoverScreen()
                  : currentIndex == 2
                      ? const NotificationScreen()
                      : const ProfileScreen()),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/icons/homeIcon.png',
                  width: size.width / 12,
                  height: size.width / 12,
                  color: currentIndex == 0
                      ? mainColor
                      : mainColor.withOpacity(0.3),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/icons/discoverIcon.png',
                  width: size.width / 12,
                  height: size.width / 12,
                  color: currentIndex == 1
                      ? mainColor
                      : mainColor.withOpacity(0.3),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/icons/notificationIcon.png',
                  width: size.width / 12,
                  height: size.width / 12,
                  color: currentIndex == 2
                      ? mainColor
                      : mainColor.withOpacity(0.3),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Image.asset(
                  'assets/icons/profileIcon.png',
                  width: size.width / 12,
                  height: size.width / 12,
                  color: currentIndex == 3
                      ? mainColor
                      : mainColor.withOpacity(0.3),
                ))
          ],
        ),
      ),
    );
  }
}
