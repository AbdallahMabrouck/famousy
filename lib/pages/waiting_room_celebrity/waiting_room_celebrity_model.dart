import '/flutter_flow/flutter_flow_util.dart';
import 'waiting_room_celebrity_widget.dart' show WaitingRoomCelebrityWidget;
import 'package:flutter/material.dart';

class WaitingRoomCelebrityModel
    extends FlutterFlowModel<WaitingRoomCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
