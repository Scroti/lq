import '/flutter_flow/flutter_flow_util.dart';
import 'forg_widget.dart' show ForgWidget;
import 'package:flutter/material.dart';

class ForgModel extends FlutterFlowModel<ForgWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();
  }
}
