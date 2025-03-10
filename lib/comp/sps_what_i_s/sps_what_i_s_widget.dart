import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sps_what_i_s_model.dart';
export 'sps_what_i_s_model.dart';

class SpsWhatISWidget extends StatefulWidget {
  const SpsWhatISWidget({super.key});

  @override
  State<SpsWhatISWidget> createState() => _SpsWhatISWidgetState();
}

class _SpsWhatISWidgetState extends State<SpsWhatISWidget> {
  late SpsWhatISModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpsWhatISModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
      child: Container(
        height: 633.75,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  minWidth: 200.0,
                                  maxWidth: 600.0,
                                ),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        0.0,
                                        2.0,
                                      ),
                                      spreadRadius: 4.0,
                                    )
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/progressive_muscle_stiffness_in_the_torso_and_limbs__your_muscles_lock_up_gradually_robbing_you_of__9uzdj6q3s3udr993po8l_2.png',
                                    width: 385.5,
                                    height: 577.6,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 607.9,
                            constraints: BoxConstraints(
                              minWidth: 300.0,
                              maxWidth: 800.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/GREEN_(14).png',
                                    width: 528.0,
                                    height: 498.51,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ],
              ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/vnimc_1.png',
                    width: 376.3,
                    height: 460.1,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('SPS_WHAT_I_S_DEDICATED_LEGAL_TEAM_BTN_ON');
                  logFirebaseEvent('Button_navigate_to');

                  context.pushNamed(SignTodayWidget.routeName);
                },
                text: 'DEDICATED LEGAL TEAM',
                icon: FaIcon(
                  FontAwesomeIcons.arrowCircleRight,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: 292.8,
                  height: 52.9,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
    );
  }
}
