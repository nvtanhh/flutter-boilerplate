// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get hello_world => 'Hello World!';

  @override
  String get button__sign_in => 'Sign In';

  @override
  String get button__sign_up => 'Sign Up';

  @override
  String get button__done => 'Done';

  @override
  String get button__send_request => 'Sent Request';

  @override
  String get button__cancel => 'Cancel';

  @override
  String get button__delete => 'Delete';

  @override
  String get field__first_name => 'First Name';

  @override
  String get field__first_name_required => 'First Name is required';

  @override
  String get field__surname => 'Sur Name';

  @override
  String get field__surname_required => 'Sur Name is required';

  @override
  String get field__email => 'Email Address';

  @override
  String get field__email_required => 'Email is required';

  @override
  String get field__email_invalid => 'Email is invalid';

  @override
  String get field__email_already_taken => 'Email already taken';

  @override
  String get field__password => 'Password';

  @override
  String get field__password_required => 'Password is required';

  @override
  String get field__password_invalid => 'Password is invalid';

  @override
  String get field__confirm_password => 'Confirm Password';

  @override
  String get field__confirm_password_required => 'Confirm Password is required';

  @override
  String get field__confirm_password_not_match => 'Confirm Password does not match';

  @override
  String get welcome__title => 'Be at the heart of what’s happening';

  @override
  String get welcome__desc =>
      'All the tools you need to implement & grow small business support ecosystems and manage enterprise learning & development programs.';

  @override
  String get sign_up__title => 'Sign Up';

  @override
  String get sign_up__desc => 'Join the Avnon Incubator Portal platform today';

  @override
  String get sign_up__policy =>
      'By signing up you agree to the <policy>Privacy Policy</policy> and <terms>Terms of use</terms>';

  @override
  String get sign_up__already_have_account => 'Already have an account? <sign_in>Sign In</sign_in>';

  @override
  String get sign_up__success_title => 'Registration Successful';

  @override
  String get sign_up__success_desc => 'Thanks for signing up!\n\nA profile activation email has been sent to you.';

  @override
  String get sign_in__title => 'Sign In';

  @override
  String get sign_in__desc => 'Sign in to the Avnon Incubator Portal platform';

  @override
  String get sign_in__policy =>
      'By signing in you agree to the <policy>Privacy Policy</policy> and <terms>Terms of use</terms>';

  @override
  String get sign_in__forgot_password => 'Forgot Password?';

  @override
  String get sign_in__invalid_credentials => 'Invalid Credentials';

  @override
  String get forgot_password__title => 'Forgot Password';

  @override
  String get forgot_password__success_title => 'Password Reset Successful';

  @override
  String get forgot_password__success_desc => 'Recover link has been sent to your email';
}
