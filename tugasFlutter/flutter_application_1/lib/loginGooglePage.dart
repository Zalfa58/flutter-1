import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/Logo1.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
                top: 40,
                child: Text(
                  "Tabungan Siswa",
                  style:
                      GoogleFonts.montserrat(color: Colors.black, fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
