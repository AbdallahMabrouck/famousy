import '/flutter_flow/flutter_flow_util.dart';
import 'availability_setting_celebrity_widget.dart'
    show AvailabilitySettingCelebrityWidget;
import 'package:flutter/material.dart';

class AvailabilitySettingCelebrityModel
    extends FlutterFlowModel<AvailabilitySettingCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for standardPrice widget.
  FocusNode? standardPriceFocusNode;
  TextEditingController? standardPriceTextController;
  String? Function(BuildContext, String?)? standardPriceTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for dmPrice widget.
  FocusNode? dmPriceFocusNode;
  TextEditingController? dmPriceTextController;
  String? Function(BuildContext, String?)? dmPriceTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for delivery24Price widget.
  FocusNode? delivery24PriceFocusNode;
  TextEditingController? delivery24PriceTextController;
  String? Function(BuildContext, String?)?
      delivery24PriceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    standardPriceFocusNode?.dispose();
    standardPriceTextController?.dispose();

    dmPriceFocusNode?.dispose();
    dmPriceTextController?.dispose();

    delivery24PriceFocusNode?.dispose();
    delivery24PriceTextController?.dispose();
  }
}
