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

final counterProvider =
    NotifierProvider<NavNotifier, String>(() => NavNotifier());
