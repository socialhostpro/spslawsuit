import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_model.dart';
export 'privacy_model.dart';

class PrivacyWidget extends StatefulWidget {
  const PrivacyWidget({super.key});

  static String routeName = 'privacy';
  static String routePath = '/privacy';

  @override
  State<PrivacyWidget> createState() => _PrivacyWidgetState();
}

class _PrivacyWidgetState extends State<PrivacyWidget> {
  late PrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'privacy'});
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
        title: 'privacy',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryText,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('PRIVACY_arrow_back_rounded_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Privacy Poliicy',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 25.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 540.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    '**Privacy Policy**\n\n**Effective Date:** 3/17/25\n\n**1. Introduction**\nWelcome to **SPSLawsuit.com** (\"we,\" \"our,\" or \"us\"). Your privacy is important to us, and this Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website.\n\n**2. Information We Collect**\nWe may collect the following types of information:\n\n- **Personal Information**: Name, email address, phone number, and other contact details when voluntarily submitted.\n- **Non-Personal Information**: Browser type, device information, IP address, and cookies to enhance website functionality.\n\n**3. How We Use Your Information**\nWe use the collected data for:\n\n- Responding to inquiries and providing legal updates.\n- Improving website performance and user experience.\n- Complying with legal obligations.\n\n**4. Sharing Your Information**\nWe do not sell or rent your personal information. However, we may share data with:\n\n- **Service Providers**: Third parties that assist in website maintenance and communication.\n- **Legal Compliance**: Authorities when required by law or legal processes.\n\n**5. Cookies and Tracking Technologies**\nOur website may use cookies to improve functionality. You may disable cookies in your browser settings, but some features may not function properly.\n\n**6. Data Security**\nWe implement security measures to protect your information from unauthorized access. However, no method is 100% secure, and we cannot guarantee absolute security.\n\n**7. Your Rights and Choices**\nYou may request to access, update, or delete your personal information by contacting us at [Insert Contact Email].\n\n**8. Third-Party Links**\nOur website may contain links to external sites. We are not responsible for their privacy policies and encourage reviewing their terms before providing personal information.\n\n**9. Updates to This Privacy Policy**\nWe reserve the right to update this Privacy Policy. Any changes will be posted on this page with an updated effective date.\n\n**10. Contact Us**\nFor any questions about this Privacy Policy, please contact us at: call 850-815-0256\n',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 155.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
