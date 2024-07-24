import '/flutter_flow/flutter_flow_util.dart';
import 'profile_create_fan_widget.dart' show ProfileCreateFanWidget;
import 'package:flutter/material.dart';

class ProfileCreateFanModel extends FlutterFlowModel<ProfileCreateFanWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for displayname widget.
  FocusNode? displaynameFocusNode;
  TextEditingController? displaynameTextController;
  String? Function(BuildContext, String?)? displaynameTextControllerValidator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // State field(s) for yourCountry widget.
  FocusNode? yourCountryFocusNode;
  TextEditingController? yourCountryTextController;
  String? Function(BuildContext, String?)? yourCountryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displaynameFocusNode?.dispose();
    displaynameTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();

    yourCountryFocusNode?.dispose();
    yourCountryTextController?.dispose();
  }
}
