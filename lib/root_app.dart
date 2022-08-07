import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:mira/widgets/balance_card.dart';
import 'package:mira/widgets/header.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
          BalanceCard(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: "Home"),
        ],
      ),
    );
  }
}
