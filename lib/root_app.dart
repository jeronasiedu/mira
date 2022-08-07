import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mira/widgets/activities.dart';
import 'package:mira/widgets/balance_card.dart';
import 'package:mira/widgets/circle.dart';
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

  @override
  Widget build(BuildContext context) {
    var headingText = Theme.of(context).textTheme.headline5!.copyWith(
          fontWeight: FontWeight.bold,
        );

    var size = MediaQuery.of(context).size.width;
    int numberOfGrids() {
      if (size < 400) {
        return 1;
      } else if (size < 680) {
        return 2;
      }
      return 3;
    }

    return Scaffold(
      appBar: header(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        children: [
          const BalanceCard(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "What do you want to do?",
              style: headingText,
            ),
          ),
          const Activities(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text("Exclusive offers just for you", style: headingText),
          ),
          Container(
            width: double.maxFinite,
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 17, 17, 25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: const [
                Positioned(
                  top: -70,
                  left: 50,
                  child: CircleShape(
                    width: 20,
                  ),
                ),
                Positioned(
                  top: -60,
                  right: -80,
                  child: CircleShape(
                    width: 25,
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 20,
                  child: CircleShape(
                    width: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: handleTap,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFFffb300),
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
            icon: Icon(FeatherIcons.shoppingBag),
            label: "Just4u",
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
