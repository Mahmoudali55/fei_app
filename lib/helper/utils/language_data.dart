import 'package:fei_app/view/loading_cubit/loading_cubit.dart';
import 'package:flutter/cupertino.dart';

import 'app_settings.dart';

mixin LanguageData {
  Loading loading = Loading();
  Locale locale = isArabic ? const Locale('ar') : const Locale('en');
}
