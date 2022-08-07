import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

AppBar header() {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
          const Text(
            "054 475 1048",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          const Spacer(),
          Badge(
            position: BadgePosition.topEnd(top: -4, end: -4),
            child: const Icon(
              FeatherIcons.bell,
              size: 22,
            ),
          )
        ],
      ),
    ),
  );
}
