import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Qrcode());
}

class Qrcode extends StatelessWidget {
  const Qrcode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(),
      ),
      home: Scaffold(
          backgroundColor: lightGrayColor,
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(20)),
              width: 350,
              height: 550,
              child: Column(
                children: [
                  Flexible(
                    flex: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.expand(
                        child: Image.asset(
                          'assets/image-qr-code.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Improve your front-end skills by building projects',
                              style: TextStyle(
                                color: darkBlueColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 26,
                                height: 1,
                                // fontVariations: [
                                //   FontVariation('wght', 900)
                                // ],
                                // fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Scan the QR code to visit Frontend Mentor and take your coding skills to the next level.',
                              style: TextStyle(
                                  color: grayishBlueColor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
