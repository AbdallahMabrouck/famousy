import '/flutter_flow/flutter_flow_util.dart';
import 'congratulations_fan_widget.dart' show CongratulationsFanWidget;
import 'package:flutter/material.dart';

class CongratulationsFanModel
    extends FlutterFlowModel<CongratulationsFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
