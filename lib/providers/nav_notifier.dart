import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/constants/app_constants.dart';

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
