import '/components/bottom_navigation_component_fan_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notifications_fan_widget.dart' show NotificationsFanWidget;
import 'package:flutter/material.dart';

class NotificationsFanModel extends FlutterFlowModel<NotificationsFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for BottomNavigationComponent-fan component.
  late BottomNavigationComponentFanModel bottomNavigationComponentFanModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationComponentFanModel =
        createModel(context, () => BottomNavigationComponentFanModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    bottomNavigationComponentFanModel.dispose();
  }
}
