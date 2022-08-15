import 'package:flutter/material.dart';
import 'package:mira/widgets/activities.dart';
import 'package:mira/widgets/balance_card.dart';
import 'package:mira/widgets/exclusive_card.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List exclusiveCards = [
    {
      "title": "Ashantifest 2.9GB",
      "description":
          "Buy the 2.9GB of Data Bundle for just GHc25 and get an extra 500MB bonus valid for 30 days",
      "price": "GHc25",
      "image": "assets/chatting.svg"
    },
    {
      "title": "1000MB 30-day pack",
      "description": "Buy the 1000MB 30-day pack at GHc8.3",
      "price": "GHc8.3",
      "image": "assets/begin_chat.svg"
    },
    {
      "title": "150MB 7 day pack",
      "description": "Buy the 150MB 7-day pack at GHc1.5",
      "price": "GHc1.5",
      "image": "assets/ideas.svg"
    },
    {
      "title": "2.5GB 3-day pack",
      "description": "Buy the 2.5GB 3-day pack at GHc12",
      "price": "GHc12",
      "image": "assets/real_life.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var headingText = Theme.of(context).textTheme.headline5!.copyWith(
          fontWeight: FontWeight.bold,
        );
    return ListView(
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
        Column(
          children: List.generate(
            exclusiveCards.length,
            (index) {
              return ExclusiveCard(
                  title: exclusiveCards[index]['title'],
                  description: exclusiveCards[index]['description'],
                  price: exclusiveCards[index]['price'],
                  image: exclusiveCards[index]['image']);
            },
          ),
        )
      ],
    );
  }
}
