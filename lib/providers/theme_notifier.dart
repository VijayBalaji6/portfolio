import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends Notifier<bool> {
  ThemeNotifier();
  bool darkTheme = false;
  @override
  bool build() {
    return darkTheme;
  }

  void onChangeTabView() {
    state = !state;
  }
}

final themeProvider = StateProvider<bool>((ref) => false);
