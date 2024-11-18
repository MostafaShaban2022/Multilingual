import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale('en', LocaleData.En),
  MapLocale('de', LocaleData.De),
  MapLocale('zh', LocaleData.Zh),
];

mixin LocaleData {
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String, dynamic> En = {
    title: 'Localizaion',
    body: 'Welcome to this localized flutter application'
  };

  static const Map<String, dynamic> De = {
    title: 'lokalisierten',
    body: 'Willkommen bei dieser lokalisierten Flutter-Anwendung',
  };

  static const Map<String, dynamic> Zh = {
    title: '本地化的',
    body: '歡迎使用這個本地化的 Flutter 應用程式 ',
  };
}
