import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'ground_breakiing_model.dart';
export 'ground_breakiing_model.dart';

class GroundBreakiingWidget extends StatefulWidget {
  const GroundBreakiingWidget({super.key});

  @override
  State<GroundBreakiingWidget> createState() => _GroundBreakiingWidgetState();
}

class _GroundBreakiingWidgetState extends State<GroundBreakiingWidget> {
  late GroundBreakiingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroundBreakiingModel());

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
            'assets/images/for_months_our_firm_has_worked_closely_with_individuals_afflicted_by_sps_consulting_with_top_neurol_cnx8j4y0fn71bj4r9l4q_2.png',
          ).image,
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: Color(0xB314181B),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 300.0,
                      maxWidth: 700.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Text(
                      'GROUNDBREAKING LEGAL DISCOVERY ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).accent4,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'And a Fight for Justice',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).accent4,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.877,
                    constraints: BoxConstraints(
                      maxWidth: 900.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 55.0),
                      child: AutoSizeText(
                        'We believe your condition was caused by exposure to a chemical in the environment, and those responsible must be held accountable.\n\nOur firm is prepared to demand up to \$50 million in compensation for your suffering—past, present, and future. We can make no promises on recovery and this is not just about financial recovery; it’s about recognition, justice, and ensuring others don’t suffer the same fate.\n\nThe underlying cause? Elevated glutamic acid decarboxylase (GAD) titers—which are also seen in diabetes but are found at far higher levels in SPS patients, especially in the spinal fluid. This leads to an imbalance of glutamate (excitatory signals) and GABA (inhibitory relaxation signals), leaving the body in a perpetual convulsive state, much like enduring mini-seizures all day, every day.',
                        minFontSize: 12.0,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
