// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Amare Contraction Timer';

  @override
  String get welcomeMessage => 'Welcome to the Amare Contraction Timer App!';

  @override
  String get menuDisclaimer => 'Disclaimer';

  @override
  String get disclaimerText =>
      'This app is a tool for tracking your contractions. Always consult a healthcare provider for medical advice.';

  @override
  String get menuBel => 'Call Instructions';

  @override
  String get menuTimer => 'Contraction Timer';

  @override
  String get belIntroTitle => 'When labor has started';

  @override
  String get belIntroText =>
      'You may call us if you think labor has started. Sometimes you may doubt, for example with irregular contractions or Braxton Hicks. The important thing is that you call us if you need us. There are no strict rules. Below is when you should definitely call:';

  @override
  String get belFirstPregnancy =>
      'For a first pregnancy: if you have contractions every 4 minutes for an hour and each contraction lasts about 1 minute.';

  @override
  String get belSecondPregnancy =>
      'For a second or later pregnancy: if you have contractions every 5–6 minutes for an hour and each contraction lasts about 1 minute.';

  @override
  String get belWatersTitle => 'When your waters break (without contractions)';

  @override
  String get belClearWaters =>
      'If the water is clear (pink or milky) you may call during the day. If it happens at night, wait until the morning — unless contractions start.';

  @override
  String get belGreenWaters =>
      'If the water is green or brown, call us immediately, even at night. If the baby’s head has not descended yet and your waters break, lie down and call us immediately.';

  @override
  String get belWorryTitle => 'Concerns';

  @override
  String get belWorryText => 'If you are worried, you may always call us.';

  @override
  String get selectBirthTypeTitle => 'Birthtype';

  @override
  String get selectBirthTypeMessage => 'Please select the type of birth';

  @override
  String get firstBirthButton => 'First Birth';

  @override
  String get subsequentBirthButton => 'Has had a birth before';

  @override
  String gapText(String time) {
    return 'Time between contractions  $time';
  }

  @override
  String weeListText(int number, String weeTijd) {
    return 'Contraction $number - $weeTijd';
  }

  @override
  String get startButton => 'Start Contraction';

  @override
  String get resetButton => 'Reset';

  @override
  String get recordLapButton => 'End Contraction';

  @override
  String get weeMessage => 'Call the Midwife!';

  @override
  String get menuContact => 'Call the Practice';
}
