import '/flutter_flow/flutter_flow_util.dart';
import 'set_subscriptions_celebrity_widget.dart'
    show SetSubscriptionsCelebrityWidget;
import 'package:flutter/material.dart';

class SetSubscriptionsCelebrityModel
    extends FlutterFlowModel<SetSubscriptionsCelebrityWidget> {
  ///  Local state fields for this page.

  DocumentReference? setSubscriptions;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for month1 widget.
  FocusNode? month1FocusNode;
  TextEditingController? month1TextController;
  String? Function(BuildContext, String?)? month1TextControllerValidator;
  // State field(s) for month3 widget.
  FocusNode? month3FocusNode;
  TextEditingController? month3TextController;
  String? Function(BuildContext, String?)? month3TextControllerValidator;
  // State field(s) for month6 widget.
  FocusNode? month6FocusNode;
  TextEditingController? month6TextController;
  String? Function(BuildContext, String?)? month6TextControllerValidator;
  // State field(s) for month12 widget.
  FocusNode? month12FocusNode;
  TextEditingController? month12TextController;
  String? Function(BuildContext, String?)? month12TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    month1FocusNode?.dispose();
    month1TextController?.dispose();

    month3FocusNode?.dispose();
    month3TextController?.dispose();

    month6FocusNode?.dispose();
    month6TextController?.dispose();

    month12FocusNode?.dispose();
    month12TextController?.dispose();
  }
}
