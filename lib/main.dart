import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redtiger_flutter/src/service/theme_service.dart';
import 'package:redtiger_flutter/src/view/account/account_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.themeService.themeData,
      home: const AccountView(),
    );
  }
}