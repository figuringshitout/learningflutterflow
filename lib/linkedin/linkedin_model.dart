import '/components/linked_in_u_i_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'linkedin_widget.dart' show LinkedinWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LinkedinModel extends FlutterFlowModel<LinkedinWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LinkedInUI component.
  late LinkedInUIModel linkedInUIModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    linkedInUIModel = createModel(context, () => LinkedInUIModel());
  }

  void dispose() {
    unfocusNode.dispose();
    linkedInUIModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
