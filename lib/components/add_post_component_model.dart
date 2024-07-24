import '/flutter_flow/flutter_flow_util.dart';
import 'add_post_component_widget.dart' show AddPostComponentWidget;
import 'package:flutter/material.dart';

class AddPostComponentModel extends FlutterFlowModel<AddPostComponentWidget> {
  ///  Local state fields for this component.

  bool imageUploaded = false;

  bool videoUploaded = false;

  String? imageURL;

  String? videoURL;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
