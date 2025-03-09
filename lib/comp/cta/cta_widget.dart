import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cta_model.dart';
export 'cta_model.dart';

class CtaWidget extends StatefulWidget {
  const CtaWidget({super.key});

  @override
  State<CtaWidget> createState() => _CtaWidgetState();
}

class _CtaWidgetState extends State<CtaWidget> {
  late CtaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CtaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/black_leather_texture_oq318q90qun0mt90ucjc_2.png',
          ).image,
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).primaryText,
              Color(0xF157636C)
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF090909),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.98,
                              constraints: BoxConstraints(
                                minWidth: 300.0,
                                maxWidth: 800.0,
                              ),
                              decoration: BoxDecoration(),
                              child: AutoSizeText(
                                'A voice in what could be one of the most significant medical-legal cases in history.',
                                textAlign: TextAlign.center,
                                minFontSize: 16.0,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Hello World',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'CTA_COMP_LETS_STAND_TOGETHER_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed(SignTodayWidget.routeName);
                              },
                              text: 'LETS STAND TOGETHER',
                              icon: FaIcon(
                                FontAwesomeIcons.arrowCircleRight,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 326.71,
                                height: 57.9,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xA439D2C0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'pro',
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
