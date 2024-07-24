import '/flutter_flow/flutter_flow_util.dart';
import 'tv_radio_fan_widget.dart' show TvRadioFanWidget;
import 'package:flutter/material.dart';

class TvRadioFanModel extends FlutterFlowModel<TvRadioFanWidget> {
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
