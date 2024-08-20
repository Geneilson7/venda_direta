import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venda_direta/utils/colors.dart';
import 'package:venda_direta/utils/routes.dart';
import 'package:venda_direta/widget/button.dart';
import 'package:venda_direta/widget/textform.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Entre aqui',
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Bem-vindo de volta, você fez falta!',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Endereço de email',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xFF555555)),
                              ),
                              const SizedBox(height: 5),
                              TextField(
                                decoration: loginField(
                                    'exemplo@email.com',
                                    const Icon(Icons.email,
                                        color: AppColors.primaryColor)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Senha',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xFF555555)),
                              ),
                              const SizedBox(height: 5),
                              TextField(
                                obscureText: true,
                                decoration: loginField(
                                  'Coloque sua senha',
                                  const Icon(Icons.lock,
                                      color: AppColors.primaryColor),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Esqueceu sua senha?',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 40,
                                child: CustomButton(
                                  backgroundColor: AppColors.primaryColor,
                                  fontSize: 16,
                                  label: 'Conecte-se agora',
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.pageHome);
                                  },
                                ),
                              ),
                              const SizedBox(height: 100),
                              SizedBox(
                                height: 40,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    side: const BorderSide(
                                        color: AppColors.primaryColor),
                                  ),
                                  child: Text(
                                    'Inscreva-se agora',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: const Color(0xFFF5F5F5),
                    child: Center(
                      child: Image.asset(
                        'assets/image/screen.png',
                        height: 500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: MediaQuery.of(context).size.width * 0.84,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/image/logo.png',
                        height: 50,
                        width: 150,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'VendaDireta by LIONS',
                        style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
