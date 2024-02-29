import 'package:flutter/material.dart';
import 'package:lista_de_presenca/pages/login_page/view/login_page.dart';
import "package:i18n_extension/i18n_widget.dart";
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lista de Presença",
      theme: ThemeData(
        primaryColor: Color(0xFF004898),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF7A2182)),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFF7A2182),
          selectionColor: Color(0xFF7A2182),
          selectionHandleColor: Color(0xFF7A2182),
        ),
      ),
      supportedLocales: const [
        Locale('en', "US"),
        Locale('pt', "BR"),
        Locale('es', ""),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: I18n(
        child: const LoginPage(),
      ),
    ),
  );
}
