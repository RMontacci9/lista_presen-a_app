import 'package:flutter/material.dart';
import 'package:lista_de_presenca/pages/criar_turmas/view/criar_turmas.dart';
import 'package:lista_de_presenca/pages/home_page/widgets/home_page.i18n.dart';
import 'package:lista_de_presenca/pages/shared/appBar.dart';
import 'package:lista_de_presenca/pages/shared/bottomNavigationBar.dart';
import 'package:lista_de_presenca/pages/turmas_anteriores/view/turmas_anteriores.dart';
import 'package:lista_de_presenca/pages/turmas_atuais/view/turmas_atuais.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    TurmasAtuais(),
    TurmasAnteriores(),
    CriarTurmas(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        title: "Olá, Essence Admin",
        appBar: AppBar(),
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/turmas_atuais.png", width: 30.0,), label: "Turmas atuais".i18n),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/turmas_anteriores.png", width: 30.0,), label: "Turmas anteriores".i18n),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/criar_turma.png", width: 30.0,), label: "Criar turmas".i18n),
        ],
        selectedItemColor: Color(0xFF7A2182),
      ),
    );
  }
}
