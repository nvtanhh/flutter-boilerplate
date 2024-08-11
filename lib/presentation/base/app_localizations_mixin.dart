import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

mixin AppLocalizationsMixin<T extends StatefulWidget> on State<T> {
  AppLocalizations get l10n => AppLocalizations.of(context)!;
}
