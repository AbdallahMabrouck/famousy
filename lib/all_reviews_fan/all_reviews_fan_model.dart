import '/flutter_flow/flutter_flow_util.dart';
import 'all_reviews_fan_widget.dart' show AllReviewsFanWidget;
import 'package:flutter/material.dart';

class AllReviewsFanModel extends FlutterFlowModel<AllReviewsFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
