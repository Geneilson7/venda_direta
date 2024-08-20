import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venda_direta/utils/colors.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  bool isExpanded = true;
  int _selectedIndex = 0; // Adicionado para controlar a página exibida

  final List<Widget> _pages = [
    const Center(child: Text('Dashboard Page')),
    const Center(child: Text('Estoque Page')),
    const Center(child: Text('Vendas Page')),
    const Center(child: Text('Financeiro Page')),
    const Center(child: Text('Compras Page')),
    const Center(child: Text('Notificações Page')),
  ]; // Adicione aqui as suas páginas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                if (isExpanded)
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFFFFFFFF),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          ListTile(
                            leading: const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/image/person.png'),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Olá 👋',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF404046),
                                  ),
                                ),
                                Text(
                                  'VendaDireta',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF404046),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1, color: Colors.grey[300]),
                          Expanded(
                            child: ListView(
                              children: [
                                buildListTile(Icons.dashboard, "Dashboard", 0),
                                buildListTile(Icons.inventory, "Estoque", 1),
                                buildListTile(
                                    Icons.monetization_on, "Vendas", 2),
                                buildListTile(Icons.account_balance_wallet,
                                    "Financeiro", 3),
                                ExpansionTile(
                                  leading: const Icon(Icons.receipt),
                                  title: Text(
                                    "Fiscal",
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF404046),
                                    ),
                                  ),
                                  children: <Widget>[
                                    buildSubListTile("NF-e"),
                                    buildSubListTile("NFC-e"),
                                    buildSubListTile("Sintegra"),
                                    buildSubListTile("SAT"),
                                  ],
                                ),
                                buildListTile(
                                    Icons.shopping_cart, "Compras", 4),
                                buildListTile(
                                    Icons.notifications, "Notificações", 5),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Expanded(
                  flex: 5,
                  child: IndexedStack(
                    index: _selectedIndex, // Página exibida
                    children: _pages, // Páginas
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              left: isExpanded
                  ? MediaQuery.of(context).size.width * 0.16
                  : MediaQuery.of(context).size.width * 0.0,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.primaryColor,
                child: IconButton(
                  icon: Icon(isExpanded
                      ? Icons.arrow_back_ios
                      : Icons.arrow_forward_ios),
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  color: Colors.white,
                  iconSize: 16,
                ),
              ),
            ),
            if (isExpanded)
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

  ListTile buildListTile(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon, size: 25, color: const Color(0xFF404046)),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF404046),
        ),
      ),
      onTap: () {
        setState(() {
          _selectedIndex = index; // Atualiza a página exibida
        });
      },
    );
  }

  ListTile buildSubListTile(String title) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 40),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF404046),
        ),
      ),
    );
  }
}
