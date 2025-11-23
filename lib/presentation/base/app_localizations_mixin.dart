import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

mixin AppLocalizationsMixin<T extends StatefulWidget> on State<T> {
  AppLocalizations get l10n => AppLocalizations.of(context)!;
}
