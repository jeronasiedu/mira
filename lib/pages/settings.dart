import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      physics: const BouncingScrollPhysics(),
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Tetteh Jeron Asiedu",
            style: Theme.of(context).textTheme.headline5!.apply(
                  fontWeightDelta: 2,
                ),
          ),
        ),
        const Divider(
          height: 25,
        ),
        ListTile(
          leading: const Icon(
            Icons.sim_card,
          ),
          title: Text(
            "Sim Registration",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Ionicons.card,
          ),
          title: Text(
            "Bill Summary",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
          ),
          onTap: () {},
        )
      ],
    );
  }
}
