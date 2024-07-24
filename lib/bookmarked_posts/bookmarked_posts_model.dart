import '/flutter_flow/flutter_flow_util.dart';
import 'bookmarked_posts_widget.dart' show BookmarkedPostsWidget;
import 'package:flutter/material.dart';

class BookmarkedPostsModel extends FlutterFlowModel<BookmarkedPostsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
