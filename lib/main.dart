import 'package:flutter/material.dart';
import 'package:ui_design/ui/home/home_ui.dart';
import 'package:ui_design/ui/view_profile/view_profile_ui.dart';
import 'package:ui_design/ui/view_profile/view_profile_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeUi.routeName,
      routes: route,
    );
  }

  Map<String, WidgetBuilder> get route => <String, WidgetBuilder>{
    HomeUi.routeName:HomeUi.builder,
    ViewProfileUi.routeName:ViewProfileUi.builder
  };

}
