import '/flutter_flow/flutter_flow_util.dart';
import 'payment_details_celebrity_widget.dart'
    show PaymentDetailsCelebrityWidget;
import 'package:flutter/material.dart';

class PaymentDetailsCelebrityModel
    extends FlutterFlowModel<PaymentDetailsCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for bankName widget.
  FocusNode? bankNameFocusNode;
  TextEditingController? bankNameTextController;
  String? Function(BuildContext, String?)? bankNameTextControllerValidator;
  // State field(s) for acNumber widget.
  FocusNode? acNumberFocusNode;
  TextEditingController? acNumberTextController;
  String? Function(BuildContext, String?)? acNumberTextControllerValidator;
  // State field(s) for acHolderName widget.
  FocusNode? acHolderNameFocusNode;
  TextEditingController? acHolderNameTextController;
  String? Function(BuildContext, String?)? acHolderNameTextControllerValidator;
  // State field(s) for number1 widget.
  FocusNode? number1FocusNode;
  TextEditingController? number1TextController;
  String? Function(BuildContext, String?)? number1TextControllerValidator;
  // State field(s) for number2 widget.
  FocusNode? number2FocusNode;
  TextEditingController? number2TextController;
  String? Function(BuildContext, String?)? number2TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    bankNameFocusNode?.dispose();
    bankNameTextController?.dispose();

    acNumberFocusNode?.dispose();
    acNumberTextController?.dispose();

    acHolderNameFocusNode?.dispose();
    acHolderNameTextController?.dispose();

    number1FocusNode?.dispose();
    number1TextController?.dispose();

    number2FocusNode?.dispose();
    number2TextController?.dispose();
  }
}
