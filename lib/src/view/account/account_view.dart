import 'package:flutter/material.dart';
import 'package:redtiger_flutter/src/service/theme_service.dart';
import 'package:provider/provider.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: context.read<ThemeService>().toggleTheme,
          child: Text(
            "Toggle Theme",
            style: context.typo.headline6,
          ),
        ),
      ),
    );
  }
}