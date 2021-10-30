
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import '../flutter_flow/flutter_flow_theme.dart';
import 'package:aadhar/login/login_widget.dart';
import 'package:aadhar/home_page/home_page_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aadhar',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home:Container(
              color: Colors.transparent,
              child: Center(
                child: Builder(
                  builder: (context) => Image.asset(
                    'assets/images/splash@2x.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
    );
  }
}
