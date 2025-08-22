// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Таймер скорочень Amare';

  @override
  String get welcomeMessage =>
      'Ласкаво просимо до додатку Таймер скорочень Amare!';

  @override
  String get menuDisclaimer => 'застереження';

  @override
  String get disclaimerText =>
      'Цей додаток призначений для відстеження ваших скорочень. Завжди консультуйтеся з медичним працівником для отримання медичних порад.';

  @override
  String get menuBel => 'Інструкції щодо дзвінка';

  @override
  String get menuTimer => 'Таймер скорочень';

  @override
  String get belIntroTitle => 'Коли почалися пологи';

  @override
  String get belIntroText =>
      'Ви можете зателефонувати нам, якщо вважаєте, що пологи почалися. Іноді ви можете сумніватися, наприклад, при нерегулярних скороченнях або при скороченнях Брекстон-Хікс. Важливо зателефонувати нам, якщо ви потребуєте допомоги. Жорстких правил немає. Нижче наведено, коли слід обов’язково зателефонувати:';

  @override
  String get belFirstPregnancy =>
      'Для першої вагітності: якщо у вас скорочення кожні 4 хвилини протягом години, і кожне скорочення триває приблизно 1 хвилину.';

  @override
  String get belSecondPregnancy =>
      'Для другої або наступної вагітності: якщо у вас скорочення кожні 5–6 хвилин протягом години, і кожне скорочення триває приблизно 1 хвилину.';

  @override
  String get belWatersTitle => 'Коли відійдуть води (без скорочень)';

  @override
  String get belClearWaters =>
      'Якщо вода прозора (рожева або молочна), можна дзвонити вдень. Якщо це трапляється вночі, зачекайте до ранку — якщо не почнуться скорочення.';

  @override
  String get belGreenWaters =>
      'Якщо вода зелена або коричнева, дзвоніть нам негайно, навіть вночі. Якщо голівка дитини ще не опустилася і відійшли води, ляжте та зателефонуйте нам негайно.';

  @override
  String get belWorryTitle => 'Турботи';

  @override
  String get belWorryText =>
      'Якщо ви хвилюєтеся, ви завжди можете зателефонувати нам.';

  @override
  String get selectBirthTypeTitle => 'Тип пологів';

  @override
  String get selectBirthTypeMessage => 'Будь ласка, оберіть тип пологів';

  @override
  String get firstBirthButton => 'Перші пологи';

  @override
  String get subsequentBirthButton => 'Вже були пологи';

  @override
  String gapText(String time) {
    return 'Час між скороченнями $time';
  }

  @override
  String weeListText(int number, String weeTijd) {
    return 'скорочення $number - $weeTijd';
  }

  @override
  String get startButton => 'Почніть скорочення';

  @override
  String get resetButton => 'Скинути';

  @override
  String get recordLapButton => 'Кінцеве скорочення';

  @override
  String get weeMessage => 'Викличте акушерку!';

  @override
  String get menuContact => 'Телефонуйте в практику';
}
