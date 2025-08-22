// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مؤقت الانقباضات Amare';

  @override
  String get welcomeMessage => 'مرحبًا بكم في تطبيق مؤقت الانقباضات Amare!';

  @override
  String get menuDisclaimer => 'تنصل';

  @override
  String get disclaimerText =>
      'هذا التطبيق أداة لتتبع الانقباضات. استشير دائمًا مقدم الرعاية الصحية للحصول على نصائح طبية.';

  @override
  String get menuBel => 'تعليمات الاتصال';

  @override
  String get menuTimer => 'مؤقت الانقباضات';

  @override
  String get belIntroTitle => 'عندما تبدأ الولادة';

  @override
  String get belIntroText =>
      'يمكنك الاتصال بنا إذا كنت تعتقد أن الولادة قد بدأت. أحيانًا قد تشعر بالشك، على سبيل المثال مع الانقباضات غير المنتظمة أو انقباضات براكستون هيكس. المهم هو أن تتصل بنا إذا كنت بحاجة إلينا. لا توجد قواعد صارمة. فيما يلي متى يجب عليك الاتصال بالتأكيد:';

  @override
  String get belFirstPregnancy =>
      'للحمل الأول: إذا كانت لديك انقباضات كل 4 دقائق لمدة ساعة، ويستمر كل انقباض حوالي دقيقة واحدة.';

  @override
  String get belSecondPregnancy =>
      'للحمل الثاني أو أكثر: إذا كانت لديك انقباضات كل 5–6 دقائق لمدة ساعة، ويستمر كل انقباض حوالي دقيقة واحدة.';

  @override
  String get belWatersTitle => 'عندما تنفجر المياه (دون انقباضات)';

  @override
  String get belClearWaters =>
      'إذا كانت المياه صافية (ورديّة أو حليبيّة)، يمكنك الاتصال أثناء النهار. إذا حدث ذلك في الليل، انتظر حتى الصباح — ما لم تبدأ الانقباضات.';

  @override
  String get belGreenWaters =>
      'إذا كانت المياه خضراء أو بنية، اتصل بنا فورًا، حتى في الليل. إذا لم تنزل رأس الطفل بعد وانفجرت المياه، استلق واتصل بنا فورًا.';

  @override
  String get belWorryTitle => 'الاهتمامات';

  @override
  String get belWorryText => 'إذا كنت قلقًا، يمكنك دائمًا الاتصال بنا.';

  @override
  String get selectBirthTypeTitle => 'نوع الولادة';

  @override
  String get selectBirthTypeMessage => 'يرجى اختيار نوع الولادة';

  @override
  String get firstBirthButton => 'الولادة الأولى';

  @override
  String get subsequentBirthButton => 'سبق له/لها الولادة';

  @override
  String gapText(String time) {
    return 'الوقت بين الانقباضات $time';
  }

  @override
  String weeListText(int number, String weeTijd) {
    return 'انقباض $number - $weeTijd';
  }

  @override
  String get startButton => 'بدء الانكماش';

  @override
  String get resetButton => 'إعادة ضبط';

  @override
  String get recordLapButton => 'إنهاء الانكماش';

  @override
  String get weeMessage => 'اتصل بالقابلات!';

  @override
  String get menuContact => 'اتصل بالممارسة';
}
