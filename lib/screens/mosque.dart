import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/components/shareCard.dart';
import 'package:google_fonts/google_fonts.dart';

class Mosque extends StatefulWidget {
  const Mosque({super.key});

  @override
  State<Mosque> createState() => _MosqueState();
}

class _MosqueState extends State<Mosque> {
  @override
  //number of night azakr is 20

  Widget build(BuildContext context) {
    List numberOfAzkar = [1, 1, 1];
    List<String> azkar = [
      "{قبل الذهاب إلى المسجد : اللّهُـمَّ اجْعَـلْ في قَلْبـي نورا ، وَفي لِسـاني نورا، وَاجْعَـلْ في سَمْعي نورا، وَاجْعَـلْ في بَصَري نورا، وَاجْعَـلْ مِنْ خَلْفي نورا، وَمِنْ أَمامـي نورا، وَاجْعَـلْ مِنْ فَوْقـي نورا ، وَمِن تَحْتـي نورا .اللّهُـمَّ أَعْطِنـي نورا.}",
      "{الدخول للمسجد : أَعوذُ باللهِ العَظيـم وَبِوَجْهِـهِ الكَرِيـم وَسُلْطـانِه القَديـم مِنَ الشّيْـطانِ الرَّجـيم،[ بِسْـمِ الله، وَالصَّلاةُ وَالسَّلامُ عَلى رَسولِ الله]، اللّهُـمَّ افْتَـحْ لي أَبْوابَ رَحْمَتـِك.}",
      "{الخروج من المسجد : بِسمِ الله وَالصّلاةُ وَالسّلامُ عَلى رَسولِ الله، اللّهُـمَّ إِنّـي أَسْأَلُكَ مِـنْ فَضْـلِك، اللّهُـمَّ اعصِمْنـي مِنَ الشَّيْـطانِ الرَّجـيم.}",
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 26,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 28,
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: primary,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 100,
                    child: Opacity(
                      opacity: 1,
                      child: Image.asset(
                        "assets/images/mosque.png",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 41),
                child: Text(
                  "اذكار المسجد",
                  style: GoogleFonts.cairo(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 230, 228, 242),
                  ), 
                ),
              ),
            ],
          ),
        ),
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: ListView(
            shrinkWrap: false,
            physics: BouncingScrollPhysics(),
            children: [
              for (var index = 0; index < azkar.length; index++)
                CounterScreen(
                  counter: numberOfAzkar[index],
                  text: azkar[index],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
