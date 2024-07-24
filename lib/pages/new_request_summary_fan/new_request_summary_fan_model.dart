import '/flutter_flow/flutter_flow_util.dart';
import 'new_request_summary_fan_widget.dart' show NewRequestSummaryFanWidget;
import 'package:flutter/material.dart';

class NewRequestSummaryFanModel
    extends FlutterFlowModel<NewRequestSummaryFanWidget> {
  ///  Local state fields for this page.

  double? standardPrice;

  double? delivery24hrsPrice;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
