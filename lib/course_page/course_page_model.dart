import '/flutter_flow/flutter_flow_util.dart';
import 'course_page_widget.dart' show CoursePageWidget;
import 'package:flutter/material.dart';

class CoursePageModel extends FlutterFlowModel<CoursePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
