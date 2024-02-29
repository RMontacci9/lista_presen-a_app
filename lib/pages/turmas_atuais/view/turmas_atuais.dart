import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lista_de_presenca/pages/turmas_atuais/widgets/listagem_turmas_atuais.dart';

class TurmasAtuais extends StatefulWidget {
  const TurmasAtuais({Key? key}) : super(key: key);

  @override
  _TurmasAtuaisState createState() => _TurmasAtuaisState();
}

class _TurmasAtuaisState extends State<TurmasAtuais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children:  [
                Text(
                  "Próximas turmas",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF767171),
                  ),
                ),

                SizedBox(
                  width: 500.0,
                   height: 500.0,
                     child: ListagemTurmasAtuais(),
                 )
              ],
            ),
          ),
        ),

    );
  }
}
