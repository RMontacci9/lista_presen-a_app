import 'dart:async';
import 'package:lista_de_presenca/pages/perfil_page/widgets/perfil_page.i18n.dart';
import 'package:flutter/material.dart';
import 'package:lista_de_presenca/pages/perfil_page/view/edit_image.dart';
import 'package:lista_de_presenca/pages/perfil_page/widgets/display_image_widget.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AppBar(
              iconTheme: const IconThemeData(
                color: Color(0xFF7A2182),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 40,
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 40, top: 10),
              child: InkWell(
                onTap: () {
                  navigateSecondPage(EditImage());
                },
                child: DisplayImage(
                  onPressed: () {},
                  imagePath: 'assets/images/user_profile.png',
                ),
              ),
            ),
            buildUserInfoDisplay("Roberta", 'Nome'.i18n, null),
            buildUserInfoDisplay("(11)968632641", 'Telefone'.i18n, null),
            buildUserInfoDisplay("Robertamontacci@gmail.com", 'Email'.i18n, null),
          ],
        ),
      ),

    );
  }

  Widget buildUserInfoDisplay(
          String getValue, String title, Widget? editPage) =>
      Padding(
          padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7A2182),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        enabled: false,
                        autofocus: false,
                        decoration: InputDecoration(
                          labelText: getValue,
                        ),
                        style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: Colors.black54),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ));
  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }
  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
