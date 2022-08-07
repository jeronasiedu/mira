// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserActivity extends StatelessWidget {
  const UserActivity({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);
  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(149, 157, 165, 0.1),
            blurRadius: 14,
            spreadRadius: 0,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset(
              image,
              width: 40,
            ),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
            ),
          ),
          Text(description),
          const Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
              ),
              child: const Text("Get it"),
            ),
          )
        ],
      ),
    );
  }
}
