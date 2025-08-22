// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Amare Weeëntimer';

  @override
  String get welcomeMessage => 'Welkom bij de Amare Weeëntimer App!';

  @override
  String get menuDisclaimer => 'Disclaimer';

  @override
  String get disclaimerText =>
      'Deze app is een hulpmiddel voor het bijhouden van je weeën. Raadpleeg altijd een zorgverlener voor medisch advies.';

  @override
  String get menuBel => 'Bel Instructies';

  @override
  String get menuTimer => 'Weeëntimer';

  @override
  String get belIntroTitle => 'Als de bevalling is begonnen';

  @override
  String get belIntroText =>
      'Je mag bellen als je denkt dat de bevalling is begonnen. Soms kan het zijn dat je twijfelt, bijvoorbeeld bij onregelmatige weeën of harde buiken. Belangrijk is dat je belt als je ons nodig hebt. Daar zijn geen vaste regels voor. Hieronder staat wanneer je ons zeker moet bellen:';

  @override
  String get belFirstPregnancy =>
      'Bij een eerste bevalling: als je een uur lang weeën hebt om de 4 minuten en elke wee duurt ongeveer 1 minuut.';

  @override
  String get belSecondPregnancy =>
      'Bij een tweede of volgende bevalling: als je een uur lang weeën hebt om de 5 tot 6 minuten, en elke wee duurt ongeveer 1 minuut.';

  @override
  String get belWatersTitle =>
      'Als de vliezen breken (en je hebt nog geen weeën)';

  @override
  String get belClearWaters =>
      'Bij helder vruchtwater (roze of melkachtig) mag je overdag bellen. Breken je vliezen ’s nachts, wacht dan tot de ochtend. Of bel ons wanneer je ook weeën krijgt.';

  @override
  String get belGreenWaters =>
      'Bij groen of bruin vruchtwater bel je ons direct, ook ’s nachts. Als het hoofdje nog niet ingedaald is en je vliezen breken, ga dan liggen en bel ons direct.';

  @override
  String get belWorryTitle => 'Ongerustheid';

  @override
  String get belWorryText => 'Bij zorgen mag je ons altijd bellen.';

  @override
  String get selectBirthTypeTitle => 'Soort Bevalling';

  @override
  String get selectBirthTypeMessage =>
      'Kies het type bevalling dat van toepassing is';

  @override
  String get firstBirthButton => 'Eerste bevalling';

  @override
  String get subsequentBirthButton => 'Al eerder bevallen';

  @override
  String gapText(String time) {
    return 'Tijd tussen weeën $time';
  }

  @override
  String weeListText(int number, String weeTijd) {
    return 'Wee $number - $weeTijd';
  }

  @override
  String get startButton => 'Start Wee';

  @override
  String get resetButton => 'Reset';

  @override
  String get recordLapButton => 'Stop Wee';

  @override
  String get weeMessage => 'Bel de Verloskundige!';

  @override
  String get menuContact => 'Bel de Praktijk';
}
