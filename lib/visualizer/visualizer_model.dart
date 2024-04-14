import '/flutter_flow/flutter_flow_util.dart';
import 'visualizer_widget.dart' show VisualizerWidget;
import 'package:flutter/material.dart';

class VisualizerModel extends FlutterFlowModel<VisualizerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
