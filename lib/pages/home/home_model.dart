import '/comp/cta/cta_widget.dart';
import '/comp/footer/footer_widget.dart';
import '/comp/ground_breakiing/ground_breakiing_widget.dart';
import '/comp/hero/hero_widget.dart';
import '/comp/spacer/spacer_widget.dart';
import '/comp/sps_is_rare/sps_is_rare_widget.dart';
import '/comp/sps_what_i_s/sps_what_i_s_widget.dart';
import '/comp/yt_player/yt_player_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for hero component.
  late HeroModel heroModel;
  // Model for spacer component.
  late SpacerModel spacerModel;
  // Model for spsIsRare component.
  late SpsIsRareModel spsIsRareModel;
  // Model for spsWhatIS component.
  late SpsWhatISModel spsWhatISModel;
  // Model for ytPlayer component.
  late YtPlayerModel ytPlayerModel;
  // Model for groundBreakiing component.
  late GroundBreakiingModel groundBreakiingModel;
  // Model for cta component.
  late CtaModel ctaModel;
  // Model for footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    heroModel = createModel(context, () => HeroModel());
    spacerModel = createModel(context, () => SpacerModel());
    spsIsRareModel = createModel(context, () => SpsIsRareModel());
    spsWhatISModel = createModel(context, () => SpsWhatISModel());
    ytPlayerModel = createModel(context, () => YtPlayerModel());
    groundBreakiingModel = createModel(context, () => GroundBreakiingModel());
    ctaModel = createModel(context, () => CtaModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    heroModel.dispose();
    spacerModel.dispose();
    spsIsRareModel.dispose();
    spsWhatISModel.dispose();
    ytPlayerModel.dispose();
    groundBreakiingModel.dispose();
    ctaModel.dispose();
    footerModel.dispose();
  }
}
