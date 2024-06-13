import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class NavNotifier extends Notifier<String> {
  NavNotifier();
  @override
  String build() {
    return AppTitles.home;
  }

  void onChangeTabView({required String selectedTabView}) {
    state = selectedTabView;
  }
}

final scrollNavProvider =
    NotifierProvider<NavNotifier, String>(() => NavNotifier());

final scrollControllerProvider = Provider((ref) => ScrollController());
