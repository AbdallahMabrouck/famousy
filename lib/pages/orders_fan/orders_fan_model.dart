import '/components/empty_state_orders_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orders_fan_widget.dart' show OrdersFanWidget;
import 'package:flutter/material.dart';

class OrdersFanModel extends FlutterFlowModel<OrdersFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for emptyStateOrders component.
  late EmptyStateOrdersModel emptyStateOrdersModel1;
  // Model for emptyStateOrders component.
  late EmptyStateOrdersModel emptyStateOrdersModel2;
  // Model for emptyStateOrders component.
  late EmptyStateOrdersModel emptyStateOrdersModel3;
  // Model for emptyStateOrders component.
  late EmptyStateOrdersModel emptyStateOrdersModel4;

  @override
  void initState(BuildContext context) {
    emptyStateOrdersModel1 =
        createModel(context, () => EmptyStateOrdersModel());
    emptyStateOrdersModel2 =
        createModel(context, () => EmptyStateOrdersModel());
    emptyStateOrdersModel3 =
        createModel(context, () => EmptyStateOrdersModel());
    emptyStateOrdersModel4 =
        createModel(context, () => EmptyStateOrdersModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emptyStateOrdersModel1.dispose();
    emptyStateOrdersModel2.dispose();
    emptyStateOrdersModel3.dispose();
    emptyStateOrdersModel4.dispose();
  }
}
