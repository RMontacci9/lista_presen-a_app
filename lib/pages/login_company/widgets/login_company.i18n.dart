import "package:i18n_extension/i18n_extension.dart";
extension Localization on String {
  static var t = Translations("pt_br") +
      {
        "pt_br": "Login",
        "en_us": "Login",
        "es": "Acceso",
      } +
      {
        "pt_br": "Entrar",
        "en_us": "Sign in",
        "es": "Iniciar sesión",
      } +
      {
        "pt_br": "Esqueci minha senha",
        "en_us": "I forgot my password",
        "es": "Olvide mi contraseña",
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