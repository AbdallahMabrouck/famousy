import '/flutter_flow/flutter_flow_util.dart';
import 'booking_page_fan_widget.dart' show BookingPageFanWidget;
import 'package:flutter/material.dart';

class BookingPageFanModel extends FlutterFlowModel<BookingPageFanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for standard widget.
  bool? standardValue;
  // State field(s) for delivery24hrs widget.
  bool? delivery24hrsValue;
  // State field(s) for HidefromProdile widget.
  bool? hidefromProdileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
