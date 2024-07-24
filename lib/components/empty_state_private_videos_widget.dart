import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_state_private_videos_model.dart';
export 'empty_state_private_videos_model.dart';

class EmptyStatePrivateVideosWidget extends StatefulWidget {
  const EmptyStatePrivateVideosWidget({super.key});

  @override
  State<EmptyStatePrivateVideosWidget> createState() =>
      _EmptyStatePrivateVideosWidgetState();
}

class _EmptyStatePrivateVideosWidgetState
    extends State<EmptyStatePrivateVideosWidget> {
  late EmptyStatePrivateVideosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyStatePrivateVideosModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.video_collection_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 50.0,
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '1pv5asz8' /* Your private videos */,
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'tn9c17nx' /* These videos are private and c... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: const Color(0x60FFFFFF),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ].divide(const SizedBox(height: 12.0)).around(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
