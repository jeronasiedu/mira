import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mira/pages/home.dart';
import 'package:mira/pages/momo.dart';
import 'package:mira/pages/settings.dart';
import 'package:mira/widgets/header.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int currentIndex = 0;
  void handleTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    const MoMoPage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: handleTap,
        currentIndex: currentIndex,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.wallet_outline),
            label: "MoMo",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.settings),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
