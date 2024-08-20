import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venda_direta/utils/colors.dart';
import 'package:venda_direta/utils/routes.dart';
import 'package:venda_direta/widget/button.dart';

class PrimaryPage extends StatefulWidget {
  const PrimaryPage({super.key});

  @override
  State<PrimaryPage> createState() => _PrimaryPageState();
}

class _PrimaryPageState extends State<PrimaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/image/screen.png',
                      width: 350,
                      height: 350,
                    ),
                  ),
                  Text(
                    'Sua empresa no próximo nível',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFFFF6B00),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Potencialize seu negócio com inovação e eficiência! Transforme ideias em realidade com nossas soluções de software.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          backgroundColor: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          label: "Login",
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.loginPage);
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomButton(
                          textColor: AppColors.accentColor,
                          backgroundColor: AppColors.white,
                          fontWeight: FontWeight.w600,
                          label: "Registrar",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/image/logo.png',
                    height: 80,
                    width: 80,
                  ),
                  Text(
                    'Versão 1.0.2',
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
