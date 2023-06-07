import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListViewCurrent widget.
  ScrollController? listViewCurrent;
  // State field(s) for TextPrompt widget.
  TextEditingController? textPromptController;
  String? Function(BuildContext, String?)? textPromptControllerValidator;
  // Stores action output result for [Custom Action - invokeChatGPT] action in IconButton widget.
  dynamic? chatresult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listViewCurrent = ScrollController();
  }

  void dispose() {
    listViewCurrent?.dispose();
    textPromptController?.dispose();
  }

  /// Additional helper methods are added here.

}
