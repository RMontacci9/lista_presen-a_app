import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdiomaPage extends StatefulWidget {
  const IdiomaPage({Key? key}) : super(key: key);

  @override
  _IdiomaPageState createState() => _IdiomaPageState();
}

class _IdiomaPageState extends State<IdiomaPage> {
  final List<String> languagesList = ["English", "Spanish", "Portuguese"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Idiomas"),
        backgroundColor: Color(0xFF7A2182),
        centerTitle: true,
      ),
      body: _buildLanguagesList(),
    );
  }

  _buildLanguagesList() {
    return ListView.builder(
      itemCount: languagesList.length,
      itemBuilder: (context, index) {
        return _buildLanguageItem(languagesList[index]);
      },
    );
  }

  _buildLanguageItem(String language) {
    return InkWell(
      onTap: () {
        print(language);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              language,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 0.3,
          ),
        ],
      ),
    );
  }
}
