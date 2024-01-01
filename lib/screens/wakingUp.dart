import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/components/shareCard.dart';
import 'package:google_fonts/google_fonts.dart';

class WakingUp extends StatefulWidget {
  const WakingUp({super.key});

  @override
  State<WakingUp> createState() => _WakingUpState();
}

class _WakingUpState extends State<WakingUp> {
  @override
  List<int> numberOfAzkar = [1, 1, 1];
  List<String> azkar = [
    "{الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.}",
    "{الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.}",
    "{لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي.}",
  ];

  Widget build(BuildContext context) {
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
                    width: 120,
                    child: Opacity(
                      opacity: 1,
                      child: Image.asset(
                        "assets/images/get-up.png",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 41),
                child: Text(
                  "اذكار الاستيقاظ",
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
