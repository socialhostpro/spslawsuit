import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mobile_menu_model.dart';
export 'mobile_menu_model.dart';

class MobileMenuWidget extends StatefulWidget {
  const MobileMenuWidget({super.key});

  @override
  State<MobileMenuWidget> createState() => _MobileMenuWidgetState();
}

class _MobileMenuWidgetState extends State<MobileMenuWidget> {
  late MobileMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileMenuModel());

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
        color: Color(0xA514181B),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent('MOBILE_MENU_COMP_Icon_c46gg2dc_ON_TAP');
                      logFirebaseEvent('Icon_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 28.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'MOBILE_MENU_COMP_GET_STARTED_BTN_ON_TAP');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(HomeWidget.routeName);
                    },
                    text: 'GET STARTED',
                    icon: FaIcon(
                      FontAwesomeIcons.arrowRight,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 250.0,
                      height: 70.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x4339D2C0),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'pro',
                                color: Colors.white,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('MOBILE_MENU_COMP_CALL_TODAY_BTN_ON_TAP');
                    logFirebaseEvent('Button_call_number');
                    await launchUrl(Uri(
                      scheme: 'tel',
                      path: '850-815-0256',
                    ));
                  },
                  text: 'CALL TODAY',
                  icon: Icon(
                    Icons.call,
                    size: 28.0,
                  ),
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 70.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x4239D2C0),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'pro',
                          color: Colors.white,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ],
      ),
    );
  }
}
