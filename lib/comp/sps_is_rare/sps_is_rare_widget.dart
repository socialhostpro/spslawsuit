import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sps_is_rare_model.dart';
export 'sps_is_rare_model.dart';

class SpsIsRareWidget extends StatefulWidget {
  const SpsIsRareWidget({super.key});

  @override
  State<SpsIsRareWidget> createState() => _SpsIsRareWidgetState();
}

class _SpsIsRareWidgetState extends State<SpsIsRareWidget> {
  late SpsIsRareModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpsIsRareModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(),
        ),
      ],
    );
  }
}
