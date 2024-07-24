import '/flutter_flow/flutter_flow_util.dart';
import 'under500_k_fan_widget.dart' show Under500KFanWidget;
import 'package:flutter/material.dart';

class Under500KFanModel extends FlutterFlowModel<Under500KFanWidget> {
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
