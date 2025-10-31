// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'News App';

  @override
  String get welcome => 'Welcome to the News App';

  @override
  String get home => 'Home';

  @override
  String get noSourcesFound => 'No news found';

  @override
  String get general => 'General';
}
