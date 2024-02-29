import "package:i18n_extension/i18n_extension.dart";
extension Localization on String {
  static var t = Translations("pt_br") +
      {
        "pt_br": "Turmas atuais",
        "en_us": "Current classes",
        "es": "Clases actuales",
      } +
      {
        "pt_br": "Turmas anteriores",
        "en_us": "Previous classes",
        "es": "Clases anteriores",
      } +
      {
        "pt_br": "Criar turmas",
        "en_us": "Create classes",
        "es": "Crear clases",
      } +
      {
        "pt_br": "Senha",
        "en_us": "Password",
        "es": "Contraseña",
      };
  String get i18n => localize(this, t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, t);

  String version(Object modifier) => localizeVersion(modifier, this, t);

  Map<String?, String> allVersions() => localizeAllVersions(this, t);

}