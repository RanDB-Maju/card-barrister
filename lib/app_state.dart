import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _systemMessage = prefs.getString('ff_systemMessage') ?? _systemMessage;
    });
    _safeInit(() {
      _userReinforcement =
          prefs.getString('ff_userReinforcement') ?? _userReinforcement;
    });
    _safeInit(() {
      _gptOpener = prefs.getString('ff_gptOpener') ?? _gptOpener;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _systemMessage =
      'You are a helpful AI assistant that helps answer any questions people may have!';
  String get systemMessage => _systemMessage;
  set systemMessage(String value) {
    _systemMessage = value;
    prefs.setString('ff_systemMessage', value);
  }

  String _userReinforcement =
      'Hello! Just to reiterate, you are a helpful AI assistant that helps answer any questions people may have!';
  String get userReinforcement => _userReinforcement;
  set userReinforcement(String value) {
    _userReinforcement = value;
    prefs.setString('ff_userReinforcement', value);
  }

  String _gptOpener = 'How can I help you today?';
  String get gptOpener => _gptOpener;
  set gptOpener(String value) {
    _gptOpener = value;
    prefs.setString('ff_gptOpener', value);
  }

  bool _awaitingReply = false;
  bool get awaitingReply => _awaitingReply;
  set awaitingReply(bool value) {
    _awaitingReply = value;
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String value) {
    _prompt = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
