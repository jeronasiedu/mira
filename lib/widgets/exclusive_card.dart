// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mira/widgets/circle.dart';

class ExclusiveCard extends StatelessWidget {
  const ExclusiveCard({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);
  final String title;
  final String description;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    var cardHeadingText = Theme.of(context).textTheme.headline6!.copyWith(
          color: Colors.white,
        );
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(bottom: 20),
      height: 170,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 17, 17, 25),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: -70,
            left: -50,
            child: CircleShape(
              width: 20,
            ),
          ),
          const Positioned(
            top: -60,
            right: -80,
            child: CircleShape(
              width: 25,
            ),
          ),
          const Positioned(
            bottom: -20,
            right: -10,
            child: CircleShape(
              width: 15,
            ),
          ),
          Positioned(
            bottom: -30,
            right: -15,
            child: SvgPicture.asset(
              image,
              width: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: cardHeadingText,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.indigo,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        price,
                        style: cardHeadingText,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[100],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    child: const Text("Buy now"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
