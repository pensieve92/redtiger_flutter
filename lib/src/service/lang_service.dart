import 'package:flutter/material.dart';
import 'package:redtiger_flutter/util/helper/intl_helper.dart';
import 'package:redtiger_flutter/util/lang/generated/l10n.dart';

class LangService with ChangeNotifier {
  LangService({
    Locale? locale,
  }) : locale = locale ?? IntlHelper.en;

  /// 현재 언어
  Locale locale;

  /// 언어 변경
  void toggleLang() {
    locale = IntlHelper.isKo ? IntlHelper.en : IntlHelper.ko;
    S.load(locale);
    notifyListeners();
  }
}