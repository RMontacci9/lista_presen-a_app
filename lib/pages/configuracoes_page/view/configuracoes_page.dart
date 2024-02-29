import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:lista_de_presenca/pages/configuracoes_page/widgets/configuracoes_page.i18n.dart';
import 'package:lista_de_presenca/pages/idioma_page/view/idioma_page.dart';



class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({Key? key}) : super(key: key);

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  bool lockInBackground = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text('Configurações'.i18n),
        backgroundColor: Color(0xFF7A2182),
        centerTitle: true,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            titlePadding: EdgeInsets.only(top: 10.0, left: 15),
            title: 'Geral'.i18n,
            tiles: [
              SettingsTile(
                title: 'Idioma'.i18n,
                subtitle: 'Português',
                leading: Icon(Icons.language),
                onPressed: (BuildContext context){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IdiomaPage()),
                  );
                },
              ),
              SettingsTile(
                  title: 'Sincronização'.i18n,
                  subtitle: '10 minutos',
                  leading: Icon(Icons.cloud_queue)
              ),
              SettingsTile(
                title: 'Reportar'.i18n,
                leading: Icon(Icons.report_gmailerrorred ),
              ),
              SettingsTile(title: 'Sair'.i18n, leading: Icon(Icons.exit_to_app)),
            ],
          ),

          SettingsSection(
            title: 'Segurança'.i18n,
            tiles: [
              SettingsTile.switchTile(
                title: 'Lock app in background',
                leading: Icon(Icons.phonelink_lock),
                switchValue: lockInBackground,
                onToggle: (bool value) {
                  setState(() {
                    lockInBackground = value;
                  });
                },
              ),
              SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  onToggle: (bool value) {},
                  switchValue: false),
              SettingsTile.switchTile(
                title: 'Mudar a senha',
                leading: Icon(Icons.lock),
                switchValue: true,
                onToggle: (bool value) {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Suporte'.i18n,
            tiles: [
              SettingsTile(
                  title: 'Termos de serviço'.i18n,
                  leading: Icon(Icons.description)
              ),
              SettingsTile(
                title: 'Contato'.i18n,
                leading: Icon(Icons.contact_support_outlined),
              ),
              SettingsTile(
                title: 'Política de privacidade'.i18n,
                leading: Icon(Icons.privacy_tip_outlined ),
              ),
              SettingsTile(
                title: 'FAQ',
                leading: Icon(Icons.question_answer_outlined),
              )
            ],
          )
        ],
      ),
    );
  }
}


