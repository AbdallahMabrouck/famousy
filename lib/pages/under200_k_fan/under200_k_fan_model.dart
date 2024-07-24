import '/flutter_flow/flutter_flow_util.dart';
import 'under200_k_fan_widget.dart' show Under200KFanWidget;
import 'package:flutter/material.dart';

class Under200KFanModel extends FlutterFlowModel<Under200KFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
