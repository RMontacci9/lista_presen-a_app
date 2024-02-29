import "package:i18n_extension/i18n_extension.dart";
extension Localization on String {
  String get i18n => localize(this, t);
  static var t = Translations("pt_br") +
      {
        "en_us": "Company",
        "pt_br": "Empresa",
      } +
      {
        "en_us": "Sing in",
        "pt_br": "Entrar",
      } +
      {
        "en_us": "Goodbye",
        "pt_br": "Adeus",
      };
}