import '/flutter_flow/flutter_flow_util.dart';
import 'create_post_component_widget.dart' show CreatePostComponentWidget;
import 'package:flutter/material.dart';

class CreatePostComponentModel
    extends FlutterFlowModel<CreatePostComponentWidget> {
  ///  Local state fields for this component.

  bool imageUploaded = false;

  bool videoUploaded = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
