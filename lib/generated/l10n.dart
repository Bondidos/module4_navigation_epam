// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Epam Lab`
  String get appTitle {
    return Intl.message(
      'Epam Lab',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `First Page`
  String get firstPageAppBarTitle {
    return Intl.message(
      'First Page',
      name: 'firstPageAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Second page`
  String get secondPageAppBarTitle {
    return Intl.message(
      'Second page',
      name: 'secondPageAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Navigate second page`
  String get actionButtonTitle {
    return Intl.message(
      'Navigate second page',
      name: 'actionButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Hell!(o) from first page`
  String get messageToSecondPage {
    return Intl.message(
      'Hell!(o) from first page',
      name: 'messageToSecondPage',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure want to exit?`
  String get confirmExitDialog {
    return Intl.message(
      'Are you sure want to exit?',
      name: 'confirmExitDialog',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get confirmYes {
    return Intl.message(
      'Yes',
      name: 'confirmYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get confirmNo {
    return Intl.message(
      'No',
      name: 'confirmNo',
      desc: '',
      args: [],
    );
  }

  /// `Message from second page is:`
  String get alertFromSecondTitle {
    return Intl.message(
      'Message from second page is:',
      name: 'alertFromSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get confirmOk {
    return Intl.message(
      'Ok',
      name: 'confirmOk',
      desc: '',
      args: [],
    );
  }

  /// `User nickname: `
  String get userNickname {
    return Intl.message(
      'User nickname: ',
      name: 'userNickname',
      desc: '',
      args: [],
    );
  }

  /// `User name: `
  String get userName {
    return Intl.message(
      'User name: ',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `User email: `
  String get userEmail {
    return Intl.message(
      'User email: ',
      name: 'userEmail',
      desc: '',
      args: [],
    );
  }

  /// `Address: `
  String get address {
    return Intl.message(
      'Address: ',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `User phone: `
  String get userPhone {
    return Intl.message(
      'User phone: ',
      name: 'userPhone',
      desc: '',
      args: [],
    );
  }

  /// `User website: `
  String get userWebsite {
    return Intl.message(
      'User website: ',
      name: 'userWebsite',
      desc: '',
      args: [],
    );
  }

  /// `User company: `
  String get userCompany {
    return Intl.message(
      'User company: ',
      name: 'userCompany',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
