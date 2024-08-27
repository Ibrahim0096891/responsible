import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rsa/presentation/screen/home_screen.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
     if(Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();

    WindowOptions windowOptions =
        WindowOptions(size: Size(100, 600), center: true, title: 'RSA');
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(RsaApp());
}

class RsaApp extends StatelessWidget {
  const RsaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

