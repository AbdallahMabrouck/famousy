import '/flutter_flow/flutter_flow_util.dart';
import 'new_request_details_form_fan_widget.dart'
    show NewRequestDetailsFormFanWidget;
import 'package:flutter/material.dart';

class NewRequestDetailsFormFanModel
    extends FlutterFlowModel<NewRequestDetailsFormFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Introduction widget.
  FocusNode? introductionFocusNode;
  TextEditingController? introductionTextController;
  String? Function(BuildContext, String?)? introductionTextControllerValidator;
  // State field(s) for Occasion widget.
  FocusNode? occasionFocusNode;
  TextEditingController? occasionTextController;
  String? Function(BuildContext, String?)? occasionTextControllerValidator;
  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    introductionFocusNode?.dispose();
    introductionTextController?.dispose();

    occasionFocusNode?.dispose();
    occasionTextController?.dispose();

    messageFocusNode?.dispose();
    messageTextController?.dispose();
  }
}
