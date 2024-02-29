import 'package:flutter/material.dart';
import 'package:lista_de_presenca/domain/lista_de_presenca_repository/src/models/empresa.dart';
import 'package:lista_de_presenca/pages/home_page/view/home_page.dart';
import 'package:lista_de_presenca/pages/login_company/widgets/login_company.i18n.dart';

class LoginCompany extends StatefulWidget {
  const LoginCompany({Key? key}) : super(key: key);

  @override
  _LoginCompanyState createState() => _LoginCompanyState();
}

class _LoginCompanyState extends State<LoginCompany> {
  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  checkLogin() async{
    String login = loginController.text;
    String senha = senhaController.text;
    if(login == "raizen" && senha == "123"){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage()),
      );

    }else{
      return null;
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 70.0,
                  bottom: 50.0,
                ),
                child: Image.asset(
                  'assets/images/novo_logo.png',
                  width: 300,
                ),
              ),
              const Text(
                //nome temporario
                "Empresa",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7A2182),
                ),
              ),
               Padding(
                padding: EdgeInsets.fromLTRB(0, 30.0, 0, 20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Login".i18n,
                    labelStyle: TextStyle(color: Color(0xFF939393)),
                    focusColor: Color(0xFF7A2182),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF7A2182)),
                    ),
                  ),
                  style: TextStyle(fontSize: 16.0),
                  controller: loginController,
                ),
              ),
               Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Senha".i18n,
                    labelStyle: TextStyle(color: Color(0xFF939393)),
                    focusColor: Color(0xFF7A2182),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF7A2182)),
                    ),
                  ),
                  style: TextStyle(fontSize: 16.0),
                  controller: senhaController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: SizedBox(
                  height: 50.0,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: checkLogin,
                    child: Text('Entrar'.i18n),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF7A2182),
                      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Esqueci minha senha".i18n,
                    style: TextStyle(color: Color(0xFF7A2182)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
