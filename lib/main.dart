import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 1;
  List titles = ["Shaklni yaxshilash", "Zarur va Kamroq", "Yog'ni yo'qotish"];
  List subtitles = [
    "Menda tanadagi yog 'miqdori kam va ko'proq mushak qurishni xohlayman",
    "Men \"oriq semiz\"man. ingichka ko'rinadi, lekin shakli yo'q. Men o'rganish mushaklarini to'g'ri yo'l bilan qo'shmoqchiman",
    "Menda 20 funtdan ortiq vazn yo'qotish kerak. Men bu yog'larning barchasini tashlab, mushak massasini olishni xohlayman",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Maqsadingiz nima?",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1D1617),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
