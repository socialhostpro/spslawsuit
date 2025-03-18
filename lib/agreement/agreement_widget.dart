import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'agreement_model.dart';
export 'agreement_model.dart';

class AgreementWidget extends StatefulWidget {
  const AgreementWidget({
    super.key,
    this.clientName,
    this.clientphone,
    this.clientEmail,
    this.clientStreet,
    this.cityStateZip,
    this.physicianPhone,
    this.physicianAddress,
    this.physicianName,
    this.story,
  });

  final String? clientName;
  final String? clientphone;
  final String? clientEmail;
  final String? clientStreet;
  final String? cityStateZip;
  final String? physicianPhone;
  final String? physicianAddress;
  final String? physicianName;
  final String? story;

  static String routeName = 'Agreement';
  static String routePath = '/agreement';

  @override
  State<AgreementWidget> createState() => _AgreementWidgetState();
}

class _AgreementWidgetState extends State<AgreementWidget> {
  late AgreementModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgreementModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Agreement'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Agreement',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'AGREEMENT_PAGE_arrow_back_ICN_ON_TAP');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 1500.0,
                      decoration: BoxDecoration(),
                      child: FlutterFlowWebView(
                        content:
                            'https://powerforms.docusign.net/f059f327-6cb6-4bf5-9c42-2ad87344a5d7?env=na3&acct=aae2026f-0108-4a9d-811c-c8ce342fd10f&accountId=aae2026f-0108-4a9d-811c-c8ce342fd10f&client_UserName=${valueOrDefault<String>(
                          widget.clientName,
                          'clientName',
                        )}&client_Email=${valueOrDefault<String>(
                          widget.clientEmail,
                          'clientEmail',
                        )}&client_address=${valueOrDefault<String>(
                          widget.clientStreet,
                          'street',
                        )}&client_Phone=${widget.clientphone}&client_CityStateZip=${widget.cityStateZip}&client_PhysicianName=${widget.physicianName}&client_PPhone=${widget.physicianPhone}&client_PAddress=${widget.physicianAddress}',
                        bypass: false,
                        height: 2000.0,
                        verticalScroll: false,
                        horizontalScroll: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
