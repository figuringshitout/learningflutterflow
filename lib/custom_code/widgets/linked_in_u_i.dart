// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the

import 'package:linkedin_login/linkedin_login.dart';

class LinkedInUI extends StatelessWidget {
  const LinkedInUI({super.key});
  final String redirectUrl =
      'https://www.linkedin.com/developers/tools/oauth/redirect';
  final String clientId = '775cufvstwj4tx';
  final String clientSecret = 'VjDn1kOT9wTRs6kd';
  @override
  Widget build(BuildContext context) {
    return LinkedInUserWidget(
      redirectUrl: redirectUrl,
      clientId: clientId,
      clientSecret: clientSecret,
      onGetUserProfile: (UserSucceededAction linkedInUser) {
        print('Access token ${linkedInUser.user.token.accessToken}');
        print('First name: ${linkedInUser.user.firstName.localized.label}');
        print('Last name: ${linkedInUser.user.lastName.localized.label}');
      },
      onError: (UserFailedAction e) {
        print('Error: ${e.toString()}');
      },
    );
  }
}
