import '/components/bottom_navigation_component_celebrity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notifications_celebrity_widget.dart' show NotificationsCelebrityWidget;
import 'package:flutter/material.dart';

class NotificationsCelebrityModel
    extends FlutterFlowModel<NotificationsCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for BottomNavigationComponent-celebrity component.
  late BottomNavigationComponentCelebrityModel
      bottomNavigationComponentCelebrityModel;

  @override
  void initState(BuildContext context) {
    bottomNavigationComponentCelebrityModel =
        createModel(context, () => BottomNavigationComponentCelebrityModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    bottomNavigationComponentCelebrityModel.dispose();
  }
}
