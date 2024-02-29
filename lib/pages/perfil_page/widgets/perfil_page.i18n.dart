import "package:i18n_extension/i18n_extension.dart";
extension Localization on String {
  static var t = Translations("pt_br") +
      {
        "pt_br": "Nome",
        "en_us": "Name",
        "es": "Nombre",
      } +
      {
        "pt_br": "Turmas anteriores",
        "en_us": "Previous classes",
        "es": "Clases anteriores",
      } +
      {
        "pt_br": "Telefone",
        "en_us": "Phone",
        "es": "Teléfono",
      } +
      {
        "pt_br": "Email",
        "en_us": "Email",
        "es": "Email",
      };
  String get i18n => localize(this, t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, t);

  String version(Object modifier) => localizeVersion(modifier, this, t);

  Map<String?, String> allVersions() => localizeAllVersions(this, t);

}