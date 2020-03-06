import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/i18n.dart';
import 'ui/screens/main_screen.dart';

void main() => runApp(IskApp());

class IskApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IskAppState();
}

class _IskAppState extends State<IskApp> {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        title: 'o74isk',
        theme: ThemeData(primarySwatch: Colors.red),
        home: IskMainScreen(),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      );
}
