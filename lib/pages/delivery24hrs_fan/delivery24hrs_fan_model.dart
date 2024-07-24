import '/flutter_flow/flutter_flow_util.dart';
import 'delivery24hrs_fan_widget.dart' show Delivery24hrsFanWidget;
import 'package:flutter/material.dart';

class Delivery24hrsFanModel extends FlutterFlowModel<Delivery24hrsFanWidget> {
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
