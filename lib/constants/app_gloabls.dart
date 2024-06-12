import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';

List<String> views = [
  AppTitles.home,
  AppTitles.about,
  AppTitles.work,
  AppTitles.contact
];

final GlobalKey homeViewKey = GlobalKey();
final GlobalKey aboutViewKey = GlobalKey();
final GlobalKey workViewKey = GlobalKey();
final GlobalKey contactViewKey = GlobalKey();
final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

final List<IconData> drawerIcons = [
  Icons.home,
  Icons.person,
  Icons.work,
  Icons.contact_page,
];
