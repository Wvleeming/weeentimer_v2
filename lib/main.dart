// ignore: unused_element
import 'dart:io';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

void main() {
  runApp(const AmareApp());
}
enum BirthType {
  first,
  subsequent
}


class AmareApp extends StatefulWidget {
 const AmareApp({super.key});

 static void setLocale(BuildContext context, Locale newLocale) {
    _AmareAppState? state = context.findAncestorStateOfType<_AmareAppState>();
    state?.setLocale(newLocale);
  }

  @override
  State<AmareApp> createState() => _AmareAppState();
}

class _AmareAppState extends State<AmareApp> {
  Locale? _locale = const Locale('nl', 'NL');
  void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF72D1BE); // Seed color for the theme
    
    return MaterialApp(
      locale: _locale,
      supportedLocales: const [
        Locale('nl', 'NL'), // Dutch
        Locale('en', 'US'), // English
        Locale('ar', 'AE'), // Arabic
        Locale( 'uk', 'UA'), // Ukrainian
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      onGenerateTitle: (context) =>
          AppLocalizations.of(context)!.appTitle ?? 'Amare Weeëntimer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:primaryColor),
        useMaterial3: true,
        fontFamily: 'poppins',
        fontFamilyFallback: ['inter']
      ),
       home: MenuPage(),
    );
   }
  }
// ----------------------------------------- AmareHeader Widget -----------------------------------------
class AmareHeader extends StatelessWidget {
  const AmareHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: Center(
      child: Image.asset(
        'assets/images/amare-tekst.png',
        width: 250,
        fit: BoxFit.contain,
      ),
    )
    );
  }
}
//------------------------------------------ Bel functie ---------------------------------------------
Future<void> _belNummer(String number) async {
   Uri telUri = Uri(scheme: 'tel', path: number);
    await launchUrl(telUri);
   
}



// ----------------------------------------- MenuTile Widget -----------------------------------------
class MenuTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
        child: Padding(padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: primaryColor,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

 // ----------------------------------------- _buildMenuTile Widget -----------------------------------------
Widget _buildMenuTile({
  required BuildContext context,
  required IconData icon,
  required String text,
  required VoidCallback onTap,
})
  {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon( 
                icon,
                size: 36,
                color: Theme.of(context).colorScheme.primary),
                const SizedBox(height: 12),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                )
            ],
          )
        )
      )
    );
  }
// ----------------------------------------- Menu Pagina -----------------------------------------
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
void _selectBirthType(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(AppLocalizations.of(context)!.selectBirthTypeTitle),
        content:  Text(AppLocalizations.of(context)!.selectBirthTypeMessage),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Sluit de dialoog
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WeeenTimerPage(birthType: BirthType.first),
                ),
              );
            },
            child: Text(AppLocalizations.of(context)!.firstBirthButton),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Sluit de dialoog
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WeeenTimerPage(birthType: BirthType.subsequent),
                ),
              );
            },
            child: Text(AppLocalizations.of(context)!.subsequentBirthButton),
          ),
        ],
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

     return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton<Locale>(
            icon: const Icon(Icons.language, color: Colors.white),
            onSelected: (locale){
              AmareApp.setLocale(context, locale);
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: Locale('nl', 'NL'),
                child: Row(children: [
                  Image.asset('assets/images/flags/nl.png', width: 24, height: 24),
                  const SizedBox(width: 8),
                  const Text('Nederlands'),
                ],
                ),
              ),
          PopupMenuItem(
            value: Locale('en','GB'),
            child: Row(
              children: [
                Image.asset('assets/images/flags/en.png', width: 24, height: 24),
                const SizedBox(width: 8),
                const Text('English'),
              ],
            ) 
          ),
          PopupMenuItem(
            value: Locale('uk','UA'),
            child: Row(
              children: [
                Image.asset('assets/images/flags/uk.png', width: 24, height: 24),
                const SizedBox(width: 8),
                const Text('українська'),
              ],
            ) 
          ),
          PopupMenuItem(
            value: Locale('ar','AE'),
            child: Row(
              children: [
                Image.asset('assets/images/flags/ar.png', width: 24, height: 24),
                const SizedBox(width: 8),
                const Text('عربي'),
              ],
            ) 
          )
            ]
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
          const AmareHeader(),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.welcomeMessage,
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
          ),
          
        Expanded(
        child: GridView.count(
          crossAxisCount: 2, // Aantal kolommen in de grid
          crossAxisSpacing: 16,
          mainAxisSpacing: 16, // Ruimte tussen de kolommen
          childAspectRatio: 0.8, // Verhouding breedte tot hoogte van de tegels
          children: [
            _buildMenuTile(
              context: context,
              icon: Icons.timer_outlined,
              text: AppLocalizations.of(context)!.menuTimer,
              onTap: () => _selectBirthType(context), // Selecteer bevalling type
            ),
            
            _buildMenuTile(
              context: context,
              icon: Icons.info_outline,
              text: AppLocalizations.of(context)!.menuBel,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BelInstructiesPage()),
              ),
            ),

            _buildMenuTile(
              context: context,
              icon: Icons.phone_in_talk_outlined,
              text: AppLocalizations.of(context)!.menuContact,
              onTap: () => _belNummer('0267440244'), // Telefoonnummer
            ),
            
            _buildMenuTile(
              context: context,
              icon: Icons.warning_amber_outlined,
              text: AppLocalizations.of(context)!.menuDisclaimer,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DisclaimerPage()),
              ),
            ),     
         ],
        ),    
      ),
    ],
    ),
  ),
     );
  }
}
class MenuButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MenuButton({
    super.key,
    required this.title,
    required this.onTap,
  }
);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(title),
    );
  }
}
//------------------------------------------ Disclaimer Pagina -----------------------------------------
class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disclaimer'),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
         child: Column(
          children: [
          const AmareHeader(),
          
           Text(
            AppLocalizations.of(context)!.disclaimerText,
            style: TextStyle(fontSize: 25, color: Colors.grey[700]),
          ),
          ],
        ),
      ),
    );
  }
}
//------------------------------------------ Bel Instructies Pagina -----------------------------------------
class BelInstructiesPage extends StatelessWidget {
  const BelInstructiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bel Instructies'),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                    const AmareHeader(),
                    Text(
                      AppLocalizations.of(context)!.belIntroTitle,
                      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Text(AppLocalizations.of(context)!.belIntroText),
                    const SizedBox(height: 16),
                    _bullet(AppLocalizations.of(context)!.belFirstPregnancy),
                    _bullet(AppLocalizations.of(context)!.belSecondPregnancy),
                    const SizedBox(height: 32),
                    Text(
                      AppLocalizations.of(context)!.belWatersTitle,
                      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    _bullet(AppLocalizations.of(context)!.belClearWaters),
                    _bullet(AppLocalizations.of(context)!.belGreenWaters),
                    const SizedBox(height: 32),
                    Text(
                      AppLocalizations.of(context)!.belWorryTitle,
                      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Text(AppLocalizations.of(context)!.belWorryText),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () => _belNummer('0267440244'),
                      icon: const Icon(Icons.phone),
                      label: Text(
                        AppLocalizations.of(context)!.menuContact,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
               ),
           ),
        );
     }
  }


Widget _bullet(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('• ', style: TextStyle(fontSize: 25)),
        Expanded(child: Text(text)),
      ],
    ),
  );
}

// ----------------------------------------- Weeëntimer Pagina -----------------------------------------
class WeeenTimerPage extends StatefulWidget {
  final BirthType birthType;
  const WeeenTimerPage({super.key, required this.birthType});
  @override
  State <WeeenTimerPage> createState() =>_WeeenTimerPageState();
}

class _WeeenTimerPageState extends State<WeeenTimerPage> {
  late Timer _timer;
  Duration _elapsed = Duration.zero;
  bool _isRunning = false;
  final List<Duration> _laps = [];

  //achtergrond timer, tijd tussen weeën
  late Timer _backgroundTimer;
  Duration _backgroundElapsed = Duration.zero;
  bool _isBackgroundRunning = false;
  final List<Duration> _gaps = [];

  
  
  String _formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
  void _recordLapAndResetTimer() {
  if (_isRunning) {
    setState(() {
      print('=== Record Lap ===');
      print('Voordat lap wordt toegevoegd: _elapsed=$_elapsed, _backgroundElapsed=$_backgroundElapsed');

      // Voeg huidige lap toe
      _laps.add(_elapsed);
      print('Lap toegevoegd: $_elapsed');
      print('Laps nu: $_laps');

      // Stop stopwatch
      _timer.cancel();
      _elapsed = Duration.zero;
      _isRunning = false;
      print('Stopwatch gestopt');

      // Start achtergrondtimer als die nog niet loopt
      if (!_isBackgroundRunning) {
        _backgroundElapsed = Duration.zero; // start meten van gap
        _isBackgroundRunning = true;
        print('Start background timer');
        _backgroundTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
          setState(() {
            _backgroundElapsed += const Duration(seconds: 1);
            print('Background timer tick: _backgroundElapsed=$_backgroundElapsed');
          });
        });
      }
    });
  }
}

void _StartStopwatch() {
  setState(() {
    print('=== Start Stopwatch ===');
    print('Voordat stopwatch start: _backgroundElapsed=$_backgroundElapsed');

    // Stop background timer en registreer gap
    if (_isBackgroundRunning) {
      _backgroundTimer.cancel();
      _gaps.add(_backgroundElapsed); // sla de tijd tussen laps op
      print('Gap toegevoegd: $_backgroundElapsed');
      print('Gaps nu: $_gaps');
      _backgroundElapsed = Duration.zero;
      _isBackgroundRunning = false;
    }

    // Start stopwatch
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _elapsed += const Duration(seconds: 1);
        print('Stopwatch tick: _elapsed=$_elapsed');
      });
    });
    _isRunning = true;
    print('Stopwatch gestart');
  });
}
  bool _shouldShowMessage() {
    if (_laps.isEmpty) return false;
    // Constants
    const firstBirthMinLap = Duration(minutes: 1);
    const firstBirthGaptarget = Duration(minutes: 4);
    const firstBirthGapTolerance = Duration(seconds: 30);

    const subsequentBirthMinLap = Duration(seconds: 30);
    const subsequentBirthGapMin = Duration(minutes: 5);
    const subsequentBirthGapMax = Duration(minutes: 6);

    const requiredTotalTime = Duration(hours: 1);

    const specialMinLap = Duration(seconds: 40);
    const specialMaxGap = Duration(minutes: 3);

    Duration totalTime() => 
    _laps.fold(Duration.zero, (sum, lap) => sum + lap) +
    _gaps.fold(Duration.zero, (sum, gap) => sum + gap);

    bool laps0k(Duration minLap) =>
      _laps.every((lap) => lap >= minLap);

    bool gaps0kFirstBirth() =>
      _gaps.every((gap) =>
      (gap - firstBirthGaptarget).inSeconds.abs() <=
      firstBirthGapTolerance.inSeconds);
      
    bool gaps0kSubsequentBirth() =>
      _gaps.every((gap) => gap >= subsequentBirthGapMin &&
      gap <= subsequentBirthGapMax);

      final total0k = totalTime() >= requiredTotalTime;

    bool specialCondition() {
      int hits = 0;
      final pairsA = _laps.length < _gaps.length ? _laps.length : _gaps.length;
      for(int i = 0; i < pairsA; i++) {
        if (_laps[i] >= specialMinLap && _gaps[i] < specialMaxGap) hits++;
      }
      if (hits >= 3) return true;
      else return false;
    }
        
    if (specialCondition()) return true;

    if (widget.birthType == BirthType.first) {
      return laps0k(firstBirthMinLap) &&
             gaps0kFirstBirth() &&
             total0k;
    } else {
      return laps0k(subsequentBirthMinLap) &&
             gaps0kSubsequentBirth() &&
             total0k;
    }
  }

  @override
  void dispose() {
    if (_isRunning) {
      _timer.cancel();
    }
    if (_isBackgroundRunning) {
      _backgroundTimer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.menuTimer),
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        ),
        backgroundColor: const Color(0xFFF9FAFB), // Lichte achtergrondkleur
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const AmareHeader(),
            const SizedBox(height: 20),
            Text(
              _formatTime(_elapsed),
              style: const TextStyle(
                fontSize: 60,
                 fontWeight: FontWeight.bold,
              ),
            ),
                 
         const SizedBox(height: 10),
          if (_isBackgroundRunning)
            Text(
              AppLocalizations.of(context)!.gapText(
                _formatTime(_backgroundElapsed),
                ),
              style: const TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Wrap(
              spacing: 16,
              runSpacing: 10,
              children: [
               ElevatedButton(
                onPressed: _isRunning ? null : _StartStopwatch,
                 child: Text(AppLocalizations.of(context)!.startButton),
                 ),
              
                ElevatedButton(
                  onPressed: _isRunning ? _recordLapAndResetTimer : null,
                  child: Text(AppLocalizations.of(context)!.recordLapButton),
                ),
              ],
            ),
          const SizedBox(height: 20),
          // conditioneel bericht
          if (_shouldShowMessage()) ...[
            Text(
              AppLocalizations.of(context)!.weeMessage,
              style: TextStyle(
                fontSize: 28,
                 fontStyle: FontStyle.italic,
                 color: primaryColor,
                 ),
                 textAlign: TextAlign.center,
            ), 
            const SizedBox(height: 16),
            ElevatedButton.icon(         
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => _belNummer('0267440244'), // Telefoonnummer
                icon: const Icon(Icons.phone),
                label: Text(
                  AppLocalizations.of(context)!.menuContact,
                  style: const TextStyle(fontSize: 18),
                ),
            ),
            const SizedBox(height: 20),
          ],
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _laps.length,
              reverse: false,
              itemBuilder: (context, i) {
                final lap = _laps[i];
                final int lapNumber= i + 1;
                final String gapText = i == 0 ? '-' : _formatTime(_gaps[i - 1]);

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  child: Padding(padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      AppLocalizations.of(context)!.weeListText(
                         lapNumber,
                         _formatTime(lap),
                        ),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                      SizedBox(height: 4),
                       Text(
                      gapText,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                     ),
                    ],
                  ),
                  ),
                );
              },
            ),
          ) 
        ],
      ),
    ),
   );
  }
}