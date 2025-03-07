import '/comp/cta/cta_widget.dart';
import '/comp/footer/footer_widget.dart';
import '/comp/ground_breakiing/ground_breakiing_widget.dart';
import '/comp/hero/hero_widget.dart';
import '/comp/spacer/spacer_widget.dart';
import '/comp/sps_is_rare/sps_is_rare_widget.dart';
import '/comp/sps_what_i_s/sps_what_i_s_widget.dart';
import '/comp/yt_player/yt_player_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: Title(
          title: 'HomePage',
          color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.heroModel,
                      updateCallback: () => safeSetState(() {}),
                      child: HeroWidget(),
                    ),
                    wrapWithModel(
                      model: _model.spacerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SpacerWidget(),
                    ),
                    wrapWithModel(
                      model: _model.spsIsRareModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SpsIsRareWidget(),
                    ),
                    wrapWithModel(
                      model: _model.spsWhatISModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SpsWhatISWidget(),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 15.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.ytPlayerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: YtPlayerWidget(),
                    ),
                    wrapWithModel(
                      model: _model.groundBreakiingModel,
                      updateCallback: () => safeSetState(() {}),
                      child: GroundBreakiingWidget(),
                    ),
                    wrapWithModel(
                      model: _model.ctaModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CtaWidget(),
                    ),
                    wrapWithModel(
                      model: _model.footerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: FooterWidget(),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
