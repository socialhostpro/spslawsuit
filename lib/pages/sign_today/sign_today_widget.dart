import '/comp/form/form_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sign_today_model.dart';
export 'sign_today_model.dart';

class SignTodayWidget extends StatefulWidget {
  const SignTodayWidget({super.key});

  static String routeName = 'SignToday';
  static String routePath = '/signToday';

  @override
  State<SignTodayWidget> createState() => _SignTodayWidgetState();
}

class _SignTodayWidgetState extends State<SignTodayWidget> {
  late SignTodayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignTodayModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SignToday'});
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
        title: 'SignToday',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.formModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FormWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
