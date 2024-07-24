import '/flutter_flow/flutter_flow_util.dart';
import 'comment_on_post_component_widget.dart'
    show CommentOnPostComponentWidget;
import 'package:flutter/material.dart';

class CommentOnPostComponentModel
    extends FlutterFlowModel<CommentOnPostComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
