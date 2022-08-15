import 'package:flutter/material.dart';

class MoMoPage extends StatelessWidget {
  const MoMoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            "Momo",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        )
      ],
    );
  }
}
