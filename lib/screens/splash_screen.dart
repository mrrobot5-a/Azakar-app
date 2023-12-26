// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // i stopped at the font of text
                Text(
                  "Azkar",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "الَّذِينَ آمَنُواْ وَتَطْمَئِنُّ قُلُوبُهُم بِذِكْرِ اللّهِ أَلاَ بِذِكْرِ اللّهِ تَطْمَئِنُّ الْقُلُوبُ ",
                  style: GoogleFonts.amiri(
                    fontSize: 20,
                    color: Color.fromARGB(255, 230, 228, 242),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 450,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: SvgPicture.asset("assets/svgs/splash.svg"),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -20,
                      child: Center(
                        child: GestureDetector(
                          // behavior: HitTestBehavior.opaque,
                          onTap: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => HomePage(),
                            //   ),
                            // );
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            width: 185,
                            height: 60,
                            decoration: BoxDecoration(
                              color: button,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "ابدأ الان",
                                style: GoogleFonts.cairo(
                                  color: Color(0xff091945),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
