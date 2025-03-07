import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'yt_player_model.dart';
export 'yt_player_model.dart';

class YtPlayerWidget extends StatefulWidget {
  const YtPlayerWidget({super.key});

  @override
  State<YtPlayerWidget> createState() => _YtPlayerWidgetState();
}

class _YtPlayerWidgetState extends State<YtPlayerWidget> {
  late YtPlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => YtPlayerModel());

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
            'assets/images/sps_is_a_rare_and_debilitating_neurological_disorder_characterized_by-__progressive_muscle_stiffnes_jd9qw6xyww2my2965f4m_0.png',
          ).image,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: Color(0xB314181B),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 25.0),
            child: FlutterFlowYoutubePlayer(
              url: 'https://youtu.be/WGcwceC_Y1w?si=GeKcFLA8D846eT7k',
              width: MediaQuery.sizeOf(context).width * 0.75,
              autoPlay: false,
              looping: true,
              mute: false,
              showControls: true,
              showFullScreen: true,
              strictRelatedVideos: true,
            ),
          ),
        ],
      ),
    );
  }
}
