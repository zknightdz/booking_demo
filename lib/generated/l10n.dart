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

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Booking`
  String get booking {
    return Intl.message(
      'Booking',
      name: 'booking',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `This feature is under development!!`
  String get feature_developing {
    return Intl.message(
      'This feature is under development!!',
      name: 'feature_developing',
      desc: '',
      args: [],
    );
  }

  /// `We are trying to bring it to you as soon as possible. Please come back later!`
  String get feature_developing_message {
    return Intl.message(
      'We are trying to bring it to you as soon as possible. Please come back later!',
      name: 'feature_developing_message',
      desc: '',
      args: [],
    );
  }

  /// `Maps`
  String get maps {
    return Intl.message(
      'Maps',
      name: 'maps',
      desc: '',
      args: [],
    );
  }

  /// `Booking schedule`
  String get booking_schedule {
    return Intl.message(
      'Booking schedule',
      name: 'booking_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Time estimation`
  String get time_estimation {
    return Intl.message(
      'Time estimation',
      name: 'time_estimation',
      desc: '',
      args: [],
    );
  }

  /// `Search barber’s, haircut service`
  String get search_hint {
    return Intl.message(
      'Search barber’s, haircut service',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }

  /// `Nearest Barbershop`
  String get nearest_barbershop {
    return Intl.message(
      'Nearest Barbershop',
      name: 'nearest_barbershop',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Most recommended`
  String get most_recommended {
    return Intl.message(
      'Most recommended',
      name: 'most_recommended',
      desc: '',
      args: [],
    );
  }

  /// `Find a barber nearby`
  String get find_a_barber_nearby {
    return Intl.message(
      'Find a barber nearby',
      name: 'find_a_barber_nearby',
      desc: '',
      args: [],
    );
  }

  /// `Find now`
  String get find_now {
    return Intl.message(
      'Find now',
      name: 'find_now',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
