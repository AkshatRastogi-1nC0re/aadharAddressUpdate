
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
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
      home: Scaffold(
        body: AnimatedSplashScreen(
            duration: 2,
            splashIconSize: 2000,
            splash: Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.14, -0.08),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/Untitled_design_(4).png',
                          ).image,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.05, 1.01),
                    child: Text(
                      'Copyright ElaraStacks 2021\n',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            nextScreen:LoginWidget()
          // splashTransition: SplashTransition.rotationTransition,
          // pageTransitionType: pageTransitionType.scale,
        ),
      ),
    );
  }
}
