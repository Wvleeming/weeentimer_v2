import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('nl'),
    Locale('uk')
  ];

  /// No description provided for @appTitle.
  ///
  /// In nl, this message translates to:
  /// **'Amare Weeëntimer'**
  String get appTitle;

  /// No description provided for @welcomeMessage.
  ///
  /// In nl, this message translates to:
  /// **'Welkom bij de Amare Weeëntimer App!'**
  String get welcomeMessage;

  /// No description provided for @menuDisclaimer.
  ///
  /// In nl, this message translates to:
  /// **'Disclaimer'**
  String get menuDisclaimer;

  /// No description provided for @disclaimerText.
  ///
  /// In nl, this message translates to:
  /// **'Deze app is een hulpmiddel voor het bijhouden van je weeën. Raadpleeg altijd een zorgverlener voor medisch advies.'**
  String get disclaimerText;

  /// No description provided for @menuBel.
  ///
  /// In nl, this message translates to:
  /// **'Bel Instructies'**
  String get menuBel;

  /// No description provided for @menuTimer.
  ///
  /// In nl, this message translates to:
  /// **'Weeëntimer'**
  String get menuTimer;

  /// No description provided for @belIntroTitle.
  ///
  /// In nl, this message translates to:
  /// **'Als de bevalling is begonnen'**
  String get belIntroTitle;

  /// No description provided for @belIntroText.
  ///
  /// In nl, this message translates to:
  /// **'Je mag bellen als je denkt dat de bevalling is begonnen. Soms kan het zijn dat je twijfelt, bijvoorbeeld bij onregelmatige weeën of harde buiken. Belangrijk is dat je belt als je ons nodig hebt. Daar zijn geen vaste regels voor. Hieronder staat wanneer je ons zeker moet bellen:'**
  String get belIntroText;

  /// No description provided for @belFirstPregnancy.
  ///
  /// In nl, this message translates to:
  /// **'Bij een eerste bevalling: als je een uur lang weeën hebt om de 4 minuten en elke wee duurt ongeveer 1 minuut.'**
  String get belFirstPregnancy;

  /// No description provided for @belSecondPregnancy.
  ///
  /// In nl, this message translates to:
  /// **'Bij een tweede of volgende bevalling: als je een uur lang weeën hebt om de 5 tot 6 minuten, en elke wee duurt ongeveer 1 minuut.'**
  String get belSecondPregnancy;

  /// No description provided for @belWatersTitle.
  ///
  /// In nl, this message translates to:
  /// **'Als de vliezen breken (en je hebt nog geen weeën)'**
  String get belWatersTitle;

  /// No description provided for @belClearWaters.
  ///
  /// In nl, this message translates to:
  /// **'Bij helder vruchtwater (roze of melkachtig) mag je overdag bellen. Breken je vliezen ’s nachts, wacht dan tot de ochtend. Of bel ons wanneer je ook weeën krijgt.'**
  String get belClearWaters;

  /// No description provided for @belGreenWaters.
  ///
  /// In nl, this message translates to:
  /// **'Bij groen of bruin vruchtwater bel je ons direct, ook ’s nachts. Als het hoofdje nog niet ingedaald is en je vliezen breken, ga dan liggen en bel ons direct.'**
  String get belGreenWaters;

  /// No description provided for @belWorryTitle.
  ///
  /// In nl, this message translates to:
  /// **'Ongerustheid'**
  String get belWorryTitle;

  /// No description provided for @belWorryText.
  ///
  /// In nl, this message translates to:
  /// **'Bij zorgen mag je ons altijd bellen.'**
  String get belWorryText;

  /// No description provided for @selectBirthTypeTitle.
  ///
  /// In nl, this message translates to:
  /// **'Soort Bevalling'**
  String get selectBirthTypeTitle;

  /// No description provided for @selectBirthTypeMessage.
  ///
  /// In nl, this message translates to:
  /// **'Kies het type bevalling dat van toepassing is'**
  String get selectBirthTypeMessage;

  /// No description provided for @firstBirthButton.
  ///
  /// In nl, this message translates to:
  /// **'Eerste bevalling'**
  String get firstBirthButton;

  /// No description provided for @subsequentBirthButton.
  ///
  /// In nl, this message translates to:
  /// **'Al eerder bevallen'**
  String get subsequentBirthButton;

  /// A gap list item showing number and duration
  ///
  /// In nl, this message translates to:
  /// **'Tijd tussen weeën {time}'**
  String gapText(String time);

  /// No description provided for @weeListText.
  ///
  /// In nl, this message translates to:
  /// **'Wee {number} - {weeTijd}'**
  String weeListText(int number, String weeTijd);

  /// No description provided for @startButton.
  ///
  /// In nl, this message translates to:
  /// **'Start Wee'**
  String get startButton;

  /// No description provided for @resetButton.
  ///
  /// In nl, this message translates to:
  /// **'Reset'**
  String get resetButton;

  /// No description provided for @recordLapButton.
  ///
  /// In nl, this message translates to:
  /// **'Stop Wee'**
  String get recordLapButton;

  /// No description provided for @weeMessage.
  ///
  /// In nl, this message translates to:
  /// **'Bel de Verloskundige!'**
  String get weeMessage;

  /// No description provided for @menuContact.
  ///
  /// In nl, this message translates to:
  /// **'Bel de Praktijk'**
  String get menuContact;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'nl', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'nl':
      return AppLocalizationsNl();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
