import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscribers_page_celebrity_widget.dart'
    show SubscribersPageCelebrityWidget;
import 'package:flutter/material.dart';

class SubscribersPageCelebrityModel
    extends FlutterFlowModel<SubscribersPageCelebrityWidget> {
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
