import 'package:flutter/material.dart';
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
      _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    });
    _safeInit(() {
      _refreshToken = prefs.getString('ff_refreshToken') ?? _refreshToken;
    });
    _safeInit(() {
      _userID = prefs.getString('ff_userID') ?? _userID;
    });
    _safeInit(() {
      _tokenExpireDateTime = prefs.containsKey('ff_tokenExpireDateTime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_tokenExpireDateTime')!)
          : _tokenExpireDateTime;
    });
    _safeInit(() {
      _JWT = prefs.getString('ff_JWT') ?? _JWT;
    });
    _safeInit(() {
      _username = prefs.getString('ff_username') ?? _username;
    });
    _safeInit(() {
      _sub = prefs.getString('ff_sub') ?? _sub;
    });
    _safeInit(() {
      _FullName = prefs.getString('ff_FullName') ?? _FullName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    _accessToken = _value;
    prefs.setString('ff_accessToken', _value);
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String _value) {
    _refreshToken = _value;
    prefs.setString('ff_refreshToken', _value);
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String _value) {
    _userID = _value;
    prefs.setString('ff_userID', _value);
  }

  DateTime? _tokenExpireDateTime;
  DateTime? get tokenExpireDateTime => _tokenExpireDateTime;
  set tokenExpireDateTime(DateTime? _value) {
    _tokenExpireDateTime = _value;
    _value != null
        ? prefs.setInt('ff_tokenExpireDateTime', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_tokenExpireDateTime');
  }

  String _JWT = '';
  String get JWT => _JWT;
  set JWT(String _value) {
    _JWT = _value;
    prefs.setString('ff_JWT', _value);
  }

  String _username = '';
  String get username => _username;
  set username(String _value) {
    _username = _value;
    prefs.setString('ff_username', _value);
  }

  String _sub = '';
  String get sub => _sub;
  set sub(String _value) {
    _sub = _value;
    prefs.setString('ff_sub', _value);
  }

  String _FullName = '';
  String get FullName => _FullName;
  set FullName(String _value) {
    _FullName = _value;
    prefs.setString('ff_FullName', _value);
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
