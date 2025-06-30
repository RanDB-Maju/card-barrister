import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/homenav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<MessagesRecord> initialMessages = [];
  void addToInitialMessages(MessagesRecord item) => initialMessages.add(item);
  void removeFromInitialMessages(MessagesRecord item) =>
      initialMessages.remove(item);
  void removeAtIndexFromInitialMessages(int index) =>
      initialMessages.removeAt(index);
  void insertAtIndexInInitialMessages(int index, MessagesRecord item) =>
      initialMessages.insert(index, item);
  void updateInitialMessagesAtIndex(
          int index, Function(MessagesRecord) updateFn) =>
      initialMessages[index] = updateFn(initialMessages[index]);

  ///  State fields for stateful widgets in this page.

  // Model for homenav component.
  late HomenavModel homenavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  ChatsRecord? chatRef;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? msg1;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? msg2;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? msg3;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  MessagesRecord? msg4;
  // Stores action output result for [Backend Call - API (AI Chat)] action in TextField widget.
  ApiCallResponse? gptResponse;

  @override
  void initState(BuildContext context) {
    homenavModel = createModel(context, () => HomenavModel());
  }

  @override
  void dispose() {
    homenavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
