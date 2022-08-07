import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mira/widgets/circle.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var smallText = Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Colors.white,
        );
    var valueText =
        Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white);
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 17, 17, 25),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: -30,
            left: -50,
            child: CircleShape(),
          ),
          const Positioned(
            bottom: -30,
            right: -50,
            child: CircleShape(
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            "Balance",
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        Text(
                          "GHc 12.20",
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                    SvgPicture.asset('assets/chip.svg')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "You are able to",
                        style: smallText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: SvgPicture.asset('assets/data.svg'),
                            ),
                            Text("1.5GB", style: valueText)
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: SvgPicture.asset('assets/voice.svg'),
                            ),
                            Text("200 Min", style: valueText)
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: SvgPicture.asset(
                                'assets/sms.svg',
                                width: 25,
                              ),
                            ),
                            Text("100 SMS", style: valueText)
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
