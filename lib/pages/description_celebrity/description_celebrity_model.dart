import '/flutter_flow/flutter_flow_util.dart';
import 'description_celebrity_widget.dart' show DescriptionCelebrityWidget;
import 'package:flutter/material.dart';

class DescriptionCelebrityModel
    extends FlutterFlowModel<DescriptionCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
