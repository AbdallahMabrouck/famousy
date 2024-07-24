import '/components/bottom_navigation_component_fan_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'authenticated_user_profile_fan_widget.dart'
    show AuthenticatedUserProfileFanWidget;
import 'package:flutter/material.dart';

class AuthenticatedUserProfileFanModel
    extends FlutterFlowModel<AuthenticatedUserProfileFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    bottomNavigationComponentFanModel.dispose();
  }
}
