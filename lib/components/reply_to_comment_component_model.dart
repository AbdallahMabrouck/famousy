import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reply_to_comment_component_widget.dart'
    show ReplyToCommentComponentWidget;
import 'package:flutter/material.dart';

class ReplyToCommentComponentModel
    extends FlutterFlowModel<ReplyToCommentComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RepliesRecord? replyOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
