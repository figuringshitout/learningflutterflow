import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'linked_in_u_i_model.dart';
export 'linked_in_u_i_model.dart';

class LinkedInUIWidget extends StatefulWidget {
  const LinkedInUIWidget({super.key});

  @override
  State<LinkedInUIWidget> createState() => _LinkedInUIWidgetState();
}

class _LinkedInUIWidgetState extends State<LinkedInUIWidget> {
  late LinkedInUIModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkedInUIModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 200.0,
      height: 100.0,
      child: custom_widgets.LinkedInUI(
        width: 200.0,
        height: 100.0,
      ),
    );
  }
}
