import '/flutter_flow/flutter_flow_util.dart';
import 'video_intro_celebrity_widget.dart' show VideoIntroCelebrityWidget;
import 'package:flutter/material.dart';

class VideoIntroCelebrityModel
    extends FlutterFlowModel<VideoIntroCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
