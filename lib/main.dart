import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_job_slavit_ou/providers/balance_provieder.dart';
import 'package:test_job_slavit_ou/providers/currency_provider.dart';
import 'package:test_job_slavit_ou/providers/screen_index_provider.dart';
import 'package:test_job_slavit_ou/screens/currency_pair/currency_pair_screen.dart';
import 'package:test_job_slavit_ou/screens/home/home_screen.dart';
import 'package:test_job_slavit_ou/screens/preloader/preloader_screen.dart';
import 'package:test_job_slavit_ou/screens/top/top_screen.dart';
import 'package:test_job_slavit_ou/screens/trade/trade_screen.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('A new onMessage event was published');
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('New Message'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text('Title: ${message.notification?.title}'),
                    Text('Body: ${message.notification?.body}'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CurrencyProvider()),
        ChangeNotifierProvider(create: (_) => BalanceProvider()),
        ChangeNotifierProvider(create: (_) => ScreenIndexProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.id,
        // initialRoute: PreloaderScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          CurrencyPairScreen.id: (context) => CurrencyPairScreen(),
          PreloaderScreen.id: (context) => PreloaderScreen(),
          TopScreen.id: (context) => TopScreen(),
          TradeScreen.id: (context) => TradeScreen(),
        },
      ),
    );
  }
}
