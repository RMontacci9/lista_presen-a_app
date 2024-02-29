import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_de_presenca/domain/lista_de_presenca_repository/src/models/empresa.dart';
import 'package:lista_de_presenca/pages/login_company/view/login_company.dart';
import 'package:lista_de_presenca/pages/login_page/widgets/login_page.i18n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController empresaController = TextEditingController();

  checkLoginEmpresa() async{
    String empresa = empresaController.text;
    if(empresa == "raizen"){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginCompany()),
      );

    }else{
      return null; //continuar depois
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0, bottom: 10.0),
                child: Image.asset("assets/images/novo_logo.png", width: 350),
              ),
               Padding(padding: EdgeInsets.only(top: 100.0),
                child: TextField(keyboardType: TextInputType.text,
                  decoration:InputDecoration(
                    labelText: "Empresa".i18n,
                    labelStyle: TextStyle(color: Color(0xFF939393)),
                    focusColor: Color(0xFF7A2182),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF7A2182)),
                    ),
                  ),
                    style: const TextStyle(fontSize: 16.0),
                    controller: empresaController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 150.0, bottom: 12.0),
                child: SizedBox(
                  height: 50.0,
                  width: 550,
                  child: ElevatedButton(
                    onPressed: checkLoginEmpresa,
                    child: Text('Entrar'.i18n),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF7A2182),
                      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
