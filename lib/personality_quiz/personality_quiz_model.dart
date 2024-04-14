import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'personality_quiz_widget.dart' show PersonalityQuizWidget;
import 'package:flutter/material.dart';

class PersonalityQuizModel extends FlutterFlowModel<PersonalityQuizWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.

  Map<AnswersPointsStruct, bool> checkboxValueMap = {};
  List<AnswersPointsStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
