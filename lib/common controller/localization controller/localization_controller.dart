import 'package:get/get.dart';

class LocalizationHelper {
  static String getLocalizedValue({
    required dynamic en,
    required dynamic fa,
    required dynamic ps,
  }) {
    final currentLocale = Get.locale?.languageCode ?? 'en';
    switch (currentLocale) {
      case 'fa':
        return fa ?? en ?? '';
      case 'ps':
        return ps ?? en ?? '';
      default:
        return en ?? '';
    }
  }
}
