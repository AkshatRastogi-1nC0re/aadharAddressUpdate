import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;
import 'package:pinput/pin_put/pin_put.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

String number="7989134733";
class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController textController;
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: Color(0xffc03231),
    borderRadius: BorderRadius.circular(5.0),
  );
  Widget boxedPinPutWithPreFilledSymbol() {
    return PinPut(
      withCursor: true,
      fieldsCount: 6,
      textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
      eachFieldWidth: (50),
      eachFieldHeight: (50),
      onSubmit: (String pin) async {
        try {

        } catch (e) {
          print(e);
        }
      },
      focusNode: _pinPutFocusNode,
      controller: _pinPutController,
      submittedFieldDecoration: pinPutDecoration,
      selectedFieldDecoration:
      pinPutDecoration.copyWith(color: Colors.lightGreen),
      followingFieldDecoration: pinPutDecoration,
    );
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
        context: context,
        child: Expanded(
          child: ScrollConfiguration(
            behavior: ScrollBehavior(),
            child: GlowingOverscrollIndicator(
              axisDirection: AxisDirection.down,
              color: Colors.red,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 30,),
                  child: Column(
                    children: [
                      Text(
                        "One Time Password",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 25),
                      boxedPinPutWithPreFilledSymbol(),
                      SizedBox(height: 25),
                      Text(
                        "Please enter the OTP that you have received on your provided phone number $number",
                        style: TextStyle(
                          fontSize: (15),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 2),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
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
                          'assets/images/Untitled_design_(2).png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 210),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                            child: Image.asset(
                              'assets/images/aa34538b884a1103e9cf82bbd52cfad7_auto_x2.jpg',
                              width: MediaQuery.of(context).size.width*0.8,
                              fit: BoxFit.cover,
                            ),
                          ),
                          AutoSizeText(
                            'Aadhar Address Update System',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.dark900,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF393A3C),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, -0.05),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 20, 0),
                                      child: TextFormField(
                                        controller: textController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Enter Your Aadhar Number',
                                          hintStyle:
                                              FlutterFlowTheme.bodyText1.override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.tertiaryColor,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.tertiaryColor,
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  print("dhidio");
                                },
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                                    child: Text(
                                      'Reset ',
                                      style: FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.dark900,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    _showDialog();
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    width: 170,
                                    height: 50,
                                    color: Color(0xFFB7302E),
                                    textStyle: FlutterFlowTheme.subtitle2,
                                    elevation: 4,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 2,
                                    ),
                                    borderRadius: 15,
                                  ),
                                  loading: _loadingButton,
                                ),
                              )
                            ],
                          )
                        ],
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
        ),
      ),
    );
  }
}
