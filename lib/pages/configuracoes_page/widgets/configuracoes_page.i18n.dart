import "package:i18n_extension/i18n_extension.dart";
extension Localization on String {
  static var t = Translations("pt_br") +
      {
        "pt_br": "Configurações",
        "en_us": "Settings",
        "es": "Ajustes",
      } +
      {
        "pt_br": "Idioma",
        "en_us": "Language",
        "es": "Idioma",
      } +
      {
        "pt_br": "Sincronização",
        "en_us": "Synchronization",
        "es": "Sincronización",
      } +
      {
        "pt_br": "Reportar",
        "en_us": "Reports",
        "es": "Reportar",
      } +
      {
        "pt_br": "Sair",
        "en_us": "Sign out",
        "es": "Salir",
      } +
      {
        "pt_br": "Geral",
        "en_us": "General",
        "es": "General",
      } +
      {
        "pt_br": "Segurança",
        "en_us": "Security",
        "es": "La seguridad",
      } +
      {
        "pt_br": "Suporte",
        "en_us": "Support",
        "es": "Soporte",
      } +
      {
        "pt_br": "Termos de serviço",
        "en_us": "Service terms",
        "es": "Condiciones del servicio",
      } +
      {
        "pt_br": "Contato",
        "en_us": "Contact",
        "es": "Contacto",
      } +
      {
        "pt_br": "Política de privacidade",
        "en_us": "Privacy policy",
        "es": "Política de privacidad",
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