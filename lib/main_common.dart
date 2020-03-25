import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_bloc_app/app_widget.dart';
import 'package:test_bloc_app/config_reader.dart';

import 'environment.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  
  Color primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(
    Provider.value(
      value: primaryColor,
      child: MyApp(),
    ),
  );
}
