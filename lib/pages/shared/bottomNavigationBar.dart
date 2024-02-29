import 'package:flutter/material.dart';
import 'package:lista_de_presenca/pages/home_page/view/home_page.dart';
import 'package:lista_de_presenca/pages/turmas_anteriores/view/turmas_anteriores.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    int _indiceAtual = 0;
    final List<Widget> _telas = [
      HomePage(),
      TurmasAnteriores(),
    ];
    void onTabTapped(int index) {
      setState(() {
        _indiceAtual = index;
      });
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Turmas atuais"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Turmas anteriores"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favoritos"),
        ],
      ),
    );

  }
}

