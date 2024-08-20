import 'package:flutter/material.dart';
import 'package:venda_direta/pages/login_page.dart';
import 'package:venda_direta/pages/page_home.dart';
import 'package:venda_direta/pages/page_init.dart';

class Routes {
  static const String pageInicital = '/page_init';
  static const String loginPage = '/login_page';
  static const String pageHome = '/page_home';
  static const String frmSerial = '/frm_serial';
  static const String configuracoes = '/configuracoes';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case pageInicital:
        return MaterialPageRoute(builder: (_) => const PrimaryPage());
      case loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case pageHome:
        return MaterialPageRoute(builder: (_) => const PageHome());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Erro'),
            ),
            body: Center(
              child: Text('Rota não definida para ${settings.name}'),
            ),
          ),
        );
    }
  }
}
