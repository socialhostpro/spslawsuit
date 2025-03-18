import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_model.dart';
export 'terms_model.dart';

class TermsWidget extends StatefulWidget {
  const TermsWidget({super.key});

  static String routeName = 'terms';
  static String routePath = '/terms';

  @override
  State<TermsWidget> createState() => _TermsWidgetState();
}

class _TermsWidgetState extends State<TermsWidget> {
  late TermsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'terms'});
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
        title: 'Terms of Service',
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
                  logFirebaseEvent('TERMS_PAGE_arrow_back_rounded_ICN_ON_TAP');
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
                                  'Terms of Service',
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
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.5,
                                  constraints: BoxConstraints(
                                    minWidth: 350.0,
                                    maxWidth: 540.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    '**Terms of Service**\n\n**Effective Date:** 3-17-25\n\n**1. Acceptance of Terms**\nBy accessing and using **SPSLawsuit.com** (\"Website,\" \"we,\" \"our,\" or \"us\"), you agree to these Terms of Service. If you do not agree, please do not use our Website.\n\n**2. Use of Website**\nYou agree to use the Website for lawful purposes only. You shall not:\n- Use the Website in any manner that violates any applicable law or regulation.\n- Attempt to gain unauthorized access to any portion of the Website.\n- Transmit any harmful code, viruses, or disruptive content.\n\n**3. Intellectual Property**\nAll content on this Website, including text, graphics, logos, and images, is the property of SPSLawsuit.com or its licensors. You may not reproduce, distribute, or modify any content without our prior written consent.\n\n**4. No Legal Advice**\nThe information provided on this Website is for general informational purposes only and does not constitute legal advice. Consult a licensed attorney for legal guidance.\n\n**5. User Submissions**\nIf you submit any information to us (e.g., inquiries, comments), you grant us the right to use such content for business purposes while maintaining confidentiality as required by law.\n\n**6. Limitation of Liability**\nTo the fullest extent permitted by law, we are not responsible for any damages arising from your use of the Website, including but not limited to direct, indirect, incidental, or consequential damages.\n\n**7. Third-Party Links**\nOur Website may contain links to third-party sites. We are not responsible for their content or policies. Accessing such sites is at your own risk.\n\n**8. Modifications to Terms**\nWe reserve the right to update these Terms at any time. Continued use of the Website after changes constitutes acceptance of the revised Terms.\n\n**9. Governing Law**\nThese Terms are governed by the laws of [Insert Jurisdiction]. Any disputes shall be resolved in the courts of [Insert Jurisdiction].\n\n**10. Contact Us**\nFor any questions regarding these Terms, please contact us at: call 850-815-0256\n\n\n',
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
