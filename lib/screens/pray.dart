import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:flutter_application_1/components/shareCard.dart';
import 'package:google_fonts/google_fonts.dart';

class Praying extends StatefulWidget {
  const Praying({super.key});

  @override
  State<Praying> createState() => _PrayingState();
}

class _PrayingState extends State<Praying> {
  List<int> numberOfAzkar = [1, 1, 1, 33, 1, 3, 3, 3, 1, 1, 7, 1];
  List<String> azkar = [
    "أسـتغفر الله، أسـتغفر الله، أسـتغفر الله. اللهـم أنـت السلام ، ومـنك السلام ، تباركت يا ذا الجـلال والإكـرام.",
    "لا إله إلا الله وحده لا شريك له، له المـلك وله الحمد، وهو على كل شيء قدير، اللهـم لا مانع لما أعطـيت، ولا معطـي لما منـعت، ولا ينفـع ذا الجـد منـك الجـد.",
    "لا إله إلا الله, وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، لا حـول ولا قـوة إلا بالله، لا إله إلا اللـه، ولا نعـبـد إلا إيـاه, له النعـمة وله الفضل وله الثـناء الحـسن، لا إله إلا الله مخلصـين لـه الدين ولو كـره الكـافرون.",
    "سـبحان الله، والحمـد لله ، والله أكـبر. (ثلاثا وثلاثين). لا إله إلا الله وحـده لا شريك له، له الملك وله الحمد، وهو على كل شيء قـدير.",
    "أعوذ بالله من الشيطان الرجيم : { اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ } .",
    "بسم الله الرحمن الرحيم : { قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ } .",
    "بسم الله الرحمن الرحيم :{ قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّالنَّفَّاثَاتِ فِي الْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ } .",
    "بسم الله الرحمن الرحيم { قُلْ أَعُوذُ بِرَبِّ النَّاسِ، مَلِكِ النَّاسِ، إِلَهِ النَّاسِ، مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ، الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ، مِنَ الْجِنَّةِ وَ النَّاسِ } .",
    "لا إله إلا الله وحـده لا شريك له، له الملك وله الحمد، يحيـي ويمـيت وهو على كل شيء قدير.",
    "اللهـم إنـي أسألـك علمـا نافعـا ورزقـا طيـبا ، وعمـلا متقـبلا .",
    "اللهم أجرنى من النار .",
    "اللهـم أعنى على ذكرك وشكرك وحسن عبادتك .",
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
                    width: 90,
                    child: Opacity(
                      opacity: 1,
                      child: Image.asset(
                        "assets/images/praying.png",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 41),
                child: Text(
                  "اذكار الصلاة",
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
