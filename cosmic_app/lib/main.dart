import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:midterm_app/firebase_options.dart';
import 'package:midterm_app/models/history.dart';
import 'package:midterm_app/screens/compatibility_screen.dart';
import 'package:midterm_app/screens/dailyhoro_screen.dart';
import 'package:midterm_app/screens/history_screen.dart';
import 'package:midterm_app/screens/home_screen.dart';
import 'package:midterm_app/screens/login_screen.dart';
import 'package:midterm_app/screens/profile_screen.dart';
import 'package:midterm_app/screens/tarot_screen.dart';
import 'package:midterm_app/screens/tarot_result_screen.dart' as result_screen;
import 'package:midterm_app/screens/zodiac_screen.dart';
import 'package:midterm_app/screens/zodiac_show_screen.dart';
import 'package:midterm_app/models/user_model.dart';
import 'package:midterm_app/models/zodiac_model.dart';
import 'package:provider/provider.dart';
import 'package:midterm_app/screens/test_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HistoryModel()),
        ChangeNotifierProvider(
            create: (_) => UserModel()),
        ChangeNotifierProvider(
            create: (_) => ZodiacModel()),
      ],
      child: MaterialApp(
        title: 'Cosmic App',
        theme: ThemeData(
          primaryColor: const Color(0xFF735688),
          scaffoldBackgroundColor: const Color(0xFFf4e5d0),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFf4e5d0),
            foregroundColor: Color(0xFF000000),
          ),
        ),
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          '/history': (context) => const HistoryScreen(),
          '/daily_horoscope': (context) => const DailyHoroscopeScreen(),
          '/tarot': (context) => const TarotScreen(title: 'Tarot'),
          '/tarot_result': (context) => const result_screen.TarotResultScreen(),
          '/zodiac': (context) => const ZodiacScreen(),
          '/compatibility': (context) => CompatibilityScreen(),
          '/profile': (context) {
            final userModel = Provider.of<UserModel>(context);
            return ProfileScreen(
              chosenCards: [],
            );
          },
          '/zodiac_show': (context) =>
              ZodiacShowScreen(zodiacSign: ''),
          '/test_database': (context) => TestPage(),
        },
      ),
    );
  }
}

void navigateToZodiacShowScreen(BuildContext context, String zodiacSign) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ZodiacShowScreen(zodiacSign: zodiacSign),
    ),
  );
}
