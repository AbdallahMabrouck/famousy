import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'profile_create_celebrity_widget.dart' show ProfileCreateCelebrityWidget;
import 'package:flutter/material.dart';

class ProfileCreateCelebrityModel
    extends FlutterFlowModel<ProfileCreateCelebrityWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for displaname widget.
  FocusNode? displanameFocusNode;
  TextEditingController? displanameTextController;
  String? Function(BuildContext, String?)? displanameTextControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for specialization widget.
  String? specializationValue;
  FormFieldController<String>? specializationValueController;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // State field(s) for largestFollowing widget.
  String? largestFollowingValue;
  FormFieldController<String>? largestFollowingValueController;
  // State field(s) for followers widget.
  String? followersValue;
  FormFieldController<String>? followersValueController;
  // State field(s) for yourHandle widget.
  FocusNode? yourHandleFocusNode;
  TextEditingController? yourHandleTextController;
  String? Function(BuildContext, String?)? yourHandleTextControllerValidator;
  // State field(s) for yourCountry widget.
  FocusNode? yourCountryFocusNode;
  TextEditingController? yourCountryTextController;
  String? Function(BuildContext, String?)? yourCountryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displanameFocusNode?.dispose();
    displanameTextController?.dispose();

    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();

    yourHandleFocusNode?.dispose();
    yourHandleTextController?.dispose();

    yourCountryFocusNode?.dispose();
    yourCountryTextController?.dispose();
  }
}
