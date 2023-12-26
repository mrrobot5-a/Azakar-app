import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class AzkarCard extends StatelessWidget {
  final String image;
  final String text;
  const AzkarCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: card,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            child: SvgPicture.asset(
              image,
              alignment: Alignment.centerLeft,
              height: 200,
            ),
          ),
          Text(
            text,
            style: GoogleFonts.cairo(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 230, 228, 242),
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
