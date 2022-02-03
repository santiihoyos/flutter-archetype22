import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

ThemeData getThemeOf(final BuildContext context) => Theme.of(context);

AppLocalizations getAppLocalizationsOf(final BuildContext context) {
  final found = AppLocalizations.of(context);
  if (found == null) {
    throw Exception("Trying to get AppLocalizations "
        "but is not initialized in current context.");
  }
  return found;
}
