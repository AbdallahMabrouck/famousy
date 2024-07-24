import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscriptions_page_fan_widget.dart' show SubscriptionsPageFanWidget;
import 'package:flutter/material.dart';

class SubscriptionsPageFanModel
    extends FlutterFlowModel<SubscriptionsPageFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
