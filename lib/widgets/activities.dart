import 'package:flutter/material.dart';
import 'package:mira/widgets/user_activity.dart';

class Activities extends StatelessWidget {
  const Activities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          UserActivity(
            title: "Airtime",
            description: "Top up airtime, pay with MoMo",
            image: "assets/phone.svg",
          ),
          UserActivity(
            title: "Data",
            description: "Stay connect to the rest of the world",
            image: "assets/data.svg",
          ),
          UserActivity(
            title: "MTN Pulse",
            description: "Mashup your bundles",
            image: "assets/package.svg",
          ),
          UserActivity(
            title: "Social Bundle",
            description: "Get Social | Stay connected",
            image: "assets/social.svg",
          ),
          UserActivity(
            title: "Others",
            description: "Videos, Midnight & Kokrokoo",
            image: "assets/plus.svg",
          ),
          UserActivity(
            title: "Just4U",
            description: "Unique offers for you",
            image: "assets/gift.svg",
          ),
        ],
      ),
    );
  }
}
