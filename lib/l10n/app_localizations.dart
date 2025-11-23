import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @hello_world.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get hello_world;

  /// No description provided for @button__sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get button__sign_in;

  /// No description provided for @button__sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get button__sign_up;

  /// No description provided for @button__done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get button__done;

  /// No description provided for @button__send_request.
  ///
  /// In en, this message translates to:
  /// **'Sent Request'**
  String get button__send_request;

  /// No description provided for @button__cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get button__cancel;

  /// No description provided for @button__delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get button__delete;

  /// No description provided for @field__first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get field__first_name;

  /// No description provided for @field__first_name_required.
  ///
  /// In en, this message translates to:
  /// **'First Name is required'**
  String get field__first_name_required;

  /// No description provided for @field__surname.
  ///
  /// In en, this message translates to:
  /// **'Sur Name'**
  String get field__surname;

  /// No description provided for @field__surname_required.
  ///
  /// In en, this message translates to:
  /// **'Sur Name is required'**
  String get field__surname_required;

  /// No description provided for @field__email.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get field__email;

  /// No description provided for @field__email_required.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get field__email_required;

  /// No description provided for @field__email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid'**
  String get field__email_invalid;

  /// No description provided for @field__email_already_taken.
  ///
  /// In en, this message translates to:
  /// **'Email already taken'**
  String get field__email_already_taken;

  /// No description provided for @field__password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get field__password;

  /// No description provided for @field__password_required.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get field__password_required;

  /// No description provided for @field__password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Password is invalid'**
  String get field__password_invalid;

  /// No description provided for @field__confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get field__confirm_password;

  /// No description provided for @field__confirm_password_required.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password is required'**
  String get field__confirm_password_required;

  /// No description provided for @field__confirm_password_not_match.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password does not match'**
  String get field__confirm_password_not_match;

  /// No description provided for @welcome__title.
  ///
  /// In en, this message translates to:
  /// **'Be at the heart of what’s happening'**
  String get welcome__title;

  /// No description provided for @welcome__desc.
  ///
  /// In en, this message translates to:
  /// **'All the tools you need to implement & grow small business support ecosystems and manage enterprise learning & development programs.'**
  String get welcome__desc;

  /// No description provided for @sign_up__title.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get sign_up__title;

  /// No description provided for @sign_up__desc.
  ///
  /// In en, this message translates to:
  /// **'Join the Avnon Incubator Portal platform today'**
  String get sign_up__desc;

  /// No description provided for @sign_up__policy.
  ///
  /// In en, this message translates to:
  /// **'By signing up you agree to the <policy>Privacy Policy</policy> and <terms>Terms of use</terms>'**
  String get sign_up__policy;

  /// No description provided for @sign_up__already_have_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? <sign_in>Sign In</sign_in>'**
  String get sign_up__already_have_account;

  /// No description provided for @sign_up__success_title.
  ///
  /// In en, this message translates to:
  /// **'Registration Successful'**
  String get sign_up__success_title;

  /// No description provided for @sign_up__success_desc.
  ///
  /// In en, this message translates to:
  /// **'Thanks for signing up!\n\nA profile activation email has been sent to you.'**
  String get sign_up__success_desc;

  /// No description provided for @sign_in__title.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get sign_in__title;

  /// No description provided for @sign_in__desc.
  ///
  /// In en, this message translates to:
  /// **'Sign in to the Avnon Incubator Portal platform'**
  String get sign_in__desc;

  /// No description provided for @sign_in__policy.
  ///
  /// In en, this message translates to:
  /// **'By signing in you agree to the <policy>Privacy Policy</policy> and <terms>Terms of use</terms>'**
  String get sign_in__policy;

  /// No description provided for @sign_in__forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get sign_in__forgot_password;

  /// No description provided for @sign_in__invalid_credentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid Credentials'**
  String get sign_in__invalid_credentials;

  /// No description provided for @forgot_password__title.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgot_password__title;

  /// No description provided for @forgot_password__success_title.
  ///
  /// In en, this message translates to:
  /// **'Password Reset Successful'**
  String get forgot_password__success_title;

  /// No description provided for @forgot_password__success_desc.
  ///
  /// In en, this message translates to:
  /// **'Recover link has been sent to your email'**
  String get forgot_password__success_desc;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
