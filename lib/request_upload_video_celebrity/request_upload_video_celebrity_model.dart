import '/flutter_flow/flutter_flow_util.dart';
import 'request_upload_video_celebrity_widget.dart'
    show RequestUploadVideoCelebrityWidget;
import 'package:flutter/material.dart';

class RequestUploadVideoCelebrityModel
    extends FlutterFlowModel<RequestUploadVideoCelebrityWidget> {
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
