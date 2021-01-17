import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/config/environment/env.dart';
import 'package:kopdar_app/init.dart';
import 'package:kopdar_app/modules/app/module.dart';

void main() {
  runZoned(() {
    runApp(Init(
        initEnv: () => Env().setDev(),
        appBuilder: (BuildContext context, String initialPath) => ModularApp(
              module: AppModule(initialPath: initialPath),
            )));
  });
}
