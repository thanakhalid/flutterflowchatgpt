import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _apiKey = prefs.getString('ff_apiKey') ?? _apiKey;
    _isDarkMode = prefs.getBool('ff_isDarkMode') ?? _isDarkMode;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _apiKey = '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';
  String get apiKey => _apiKey;
  set apiKey(String _value) {
    _apiKey = _value;
    prefs.setString('ff_apiKey', _value);
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool _value) {
    _isDarkMode = _value;
    prefs.setBool('ff_isDarkMode', _value);
  }

  List<dynamic> _currentConversation = [];
  List<dynamic> get currentConversation => _currentConversation;
  set currentConversation(List<dynamic> _value) {
    _currentConversation = _value;
  }

  void addToCurrentConversation(dynamic _value) {
    _currentConversation.add(_value);
  }

  void removeFromCurrentConversation(dynamic _value) {
    _currentConversation.remove(_value);
  }

  void removeAtIndexFromCurrentConversation(int _index) {
    _currentConversation.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
