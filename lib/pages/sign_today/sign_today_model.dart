import '/comp/footer/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_today_widget.dart' show SignTodayWidget;
import 'package:flutter/material.dart';

class SignTodayModel extends FlutterFlowModel<SignTodayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    footerModel.dispose();
  }
}
