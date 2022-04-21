// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStore, Store {
  final _$emailAddressAtom = Atom(name: '_AuthStore.emailAddress');

  @override
  String? get emailAddress {
    _$emailAddressAtom.reportRead();
    return super.emailAddress;
  }

  @override
  set emailAddress(String? value) {
    _$emailAddressAtom.reportWrite(value, super.emailAddress, () {
      super.emailAddress = value;
    });
  }

  final _$passwordAtom = Atom(name: '_AuthStore.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$showBioLoginAtom = Atom(name: '_AuthStore.showBioLogin');

  @override
  bool? get showBioLogin {
    _$showBioLoginAtom.reportRead();
    return super.showBioLogin;
  }

  @override
  set showBioLogin(bool? value) {
    _$showBioLoginAtom.reportWrite(value, super.showBioLogin, () {
      super.showBioLogin = value;
    });
  }

  final _$authenticatedAtom = Atom(name: '_AuthStore.authenticated');

  @override
  bool? get authenticated {
    _$authenticatedAtom.reportRead();
    return super.authenticated;
  }

  @override
  set authenticated(bool? value) {
    _$authenticatedAtom.reportWrite(value, super.authenticated, () {
      super.authenticated = value;
    });
  }

  final _$isUserLoggedInAtom = Atom(name: '_AuthStore.isUserLoggedIn');

  @override
  bool? get isUserLoggedIn {
    _$isUserLoggedInAtom.reportRead();
    return super.isUserLoggedIn;
  }

  @override
  set isUserLoggedIn(bool? value) {
    _$isUserLoggedInAtom.reportWrite(value, super.isUserLoggedIn, () {
      super.isUserLoggedIn = value;
    });
  }

  @override
  String toString() {
    return '''
emailAddress: ${emailAddress},
password: ${password},
showBioLogin: ${showBioLogin},
authenticated: ${authenticated},
isUserLoggedIn: ${isUserLoggedIn}
    ''';
  }
}
