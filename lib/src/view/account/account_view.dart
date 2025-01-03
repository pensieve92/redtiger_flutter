import 'package:flutter/material.dart';
import 'package:redtiger_flutter/src/service/theme_service.dart';
import 'package:provider/provider.dart';
import 'package:redtiger_flutter/util/lang/generated/l10n.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.shopping),
      ),
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