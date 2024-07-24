import '/components/bottom_navigation_component_celebrity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_celebrity_widget.dart' show HomePageCelebrityWidget;
import 'package:flutter/material.dart';

class HomePageCelebrityModel extends FlutterFlowModel<HomePageCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    bottomNavigationComponentCelebrityModel.dispose();
  }
}
