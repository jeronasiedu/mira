import 'package:flutter/material.dart';
import 'package:mira/data/exclusive_cards_data.dart';
import 'package:mira/widgets/activities.dart';
import 'package:mira/widgets/balance_card.dart';
import 'package:mira/widgets/exclusive_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var headingText = Theme.of(context).textTheme.headline6!.copyWith(
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
            exclusiveCardsList.length,
            (index) {
              return ExclusiveCard(
                title: exclusiveCardsList[index].title,
                description: exclusiveCardsList[index].description,
                price: exclusiveCardsList[index].price,
                image: exclusiveCardsList[index].image,
              );
            },
          ),
        )
      ],
    );
  }
}
