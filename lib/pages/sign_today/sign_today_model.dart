import '/comp/form/form_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_today_widget.dart' show SignTodayWidget;
import 'package:flutter/material.dart';

class SignTodayModel extends FlutterFlowModel<SignTodayWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FORM component.
  late FormModel formModel;

  @override
  void initState(BuildContext context) {
    formModel = createModel(context, () => FormModel());
  }

  @override
  void dispose() {
    formModel.dispose();
  }
}
