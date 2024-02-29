import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_de_presenca/domain/lista_de_presenca_repository/src/models/turmas_atuais_model.dart';

class ListagemTurmasAtuais extends StatefulWidget {
  const ListagemTurmasAtuais({Key? key}) : super(key: key);

  @override
  _ListagemTurmasAtuaisState createState() => _ListagemTurmasAtuaisState();
}

class _ListagemTurmasAtuaisState extends State<ListagemTurmasAtuais> {
  List<TurmasAtuaisModel> turmasAtuais = [
    TurmasAtuaisModel(Id: '1', Nome: 'Turma A', DataHora: '20/01/2022'),
    TurmasAtuaisModel(Id: '2', Nome: 'Turma B', DataHora: '09/02/2022'),
    TurmasAtuaisModel(Id: '3', Nome: 'Turma C', DataHora: '17/04/2022'),
    TurmasAtuaisModel(Id: '3', Nome: 'Turma C', DataHora: '17/04/2022'),
    TurmasAtuaisModel(Id: '3', Nome: 'Turma C', DataHora: '17/04/2022'),
    TurmasAtuaisModel(Id: '3', Nome: 'Turma C', DataHora: '17/04/2022'),
    TurmasAtuaisModel(Id: '3', Nome: 'Turma C', DataHora: '17/04/2022'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: turmasAtuais.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/calendar.png",
                        width: 30.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 4.0, 0, 4.0),
                            child: Text(
                              turmasAtuais[index].Nome.toString(),
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 0, 0, 4.0),
                            child:
                                Text(turmasAtuais[index].DataHora.toString()),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
