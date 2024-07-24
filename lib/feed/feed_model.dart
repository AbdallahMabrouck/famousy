import '/components/bottom_navigation_component_celebrity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'feed_widget.dart' show FeedWidget;
import 'package:flutter/material.dart';

class FeedModel extends FlutterFlowModel<FeedWidget> {
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
