//criando a appbar

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_de_presenca/pages/configuracoes_page/view/configuracoes_page.dart';
import 'package:lista_de_presenca/pages/perfil_page/view/perfil_page.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Color(0xFF7A2182);
  final String title;

  //final IconButton = Image.asset("assets/icons/profile.png");
  final AppBar appBar;

  //final List<Widget> widgets;

  //required this.widgets
  //required this.appBar

  BaseAppBar({
    required this.title,
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 100.0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PerfilPage()),
                      );
                    },
                    icon: Image.asset("assets/icons/profile.png"),
                    color: Color(0xFF7A2182),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(244.0, 0, 0, 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfiguracoesPage()),
                        );
                      },
                      icon: Image.asset("assets/icons/settings.png"),
                      color: Color(0xFF7A2182),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      backgroundColor: backgroundColor,
      title: Column(
        verticalDirection: VerticalDirection.down,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ],
      ),

      //actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(100.0);
}
