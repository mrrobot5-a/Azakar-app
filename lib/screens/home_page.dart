// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_application_1/colors.dart';

import 'package:google_fonts/google_fonts.dart';

import '../components/azkarCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          "اذكار المسلم ",
          style: GoogleFonts.cairo(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/morning');
                },
                child: AzkarCard(
                  image: "assets/svgs/morning.svg",
                  text: "اذكار الصباح",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/night');
                },
                child: AzkarCard(
                  image: "assets/svgs/night.svg",
                  text: "اذكار المساء",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/mosque');
                },
                child: AzkarCard(
                  image: "assets/svgs/mosque.svg",
                  text: "اذكار المسجد",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/get_up');
                },
                child: AzkarCard(
                  image: "assets/svgs/wake up.svg",
                  text: "اذكار الاستيقاظ",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sleeping');
                },
                child: AzkarCard(
                  image: "assets/svgs/sleeping.svg",
                  text: "اذكار النوم",
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/praying');
                },
                child: AzkarCard(
                  image: "assets/svgs/pray.svg",
                  text: "اذكار الصلاة",
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
