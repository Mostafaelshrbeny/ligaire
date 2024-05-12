class Country {
  static List<String> countriesValue = [
    "Egypt",
    "UAE",
    "France",
    "United States",
    "UK",
    "Italy"
  ];
}
/*
flutter pub run easy_localization:generate -S "assets/lang" -O "lib/lang"

flutter pub run easy_localization:generate -S "assets/lang" -O "lib/lang" -o "locale_keys.g.dart" -f keys
*/