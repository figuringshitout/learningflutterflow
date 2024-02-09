import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class LearnFlutterflowAuthUser {
  LearnFlutterflowAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<LearnFlutterflowAuthUser> learnFlutterflowAuthUserSubject =
    BehaviorSubject.seeded(LearnFlutterflowAuthUser(loggedIn: false));
Stream<LearnFlutterflowAuthUser> learnFlutterflowAuthUserStream() =>
    learnFlutterflowAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
