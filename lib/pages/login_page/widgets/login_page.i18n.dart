import "package:i18n_extension/i18n_extension.dart";
extension Localization on String {
  static var t = Translations("pt_br") +
      {
        "pt_br": "Empresa",
        "en_us": "Company",
        "es": "Empresa",
      } +
      {
        "pt_br": "Entrar",
        "en_us": "Sign in",
        "es": "Iniciar sesión",
      };
  String get i18n => localize(this, t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, t);

  String version(Object modifier) => localizeVersion(modifier, this, t);

  Map<String?, String> allVersions() => localizeAllVersions(this, t);

}