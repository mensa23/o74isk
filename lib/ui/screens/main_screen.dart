import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:o74isk/generated/i18n.dart';
import 'package:o74isk/ui/tabs/home_tab.dart';
import 'package:quick_actions/quick_actions.dart';

class IskMainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IskMainScreenState();
}

class _IskMainScreenState extends State<IskMainScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // handle shortcut input
    final QuickActions quickActions = QuickActions();
    quickActions.initialize((shortcutType) {
      switch (shortcutType) {
        case 'Planetary_Interaction':
          setState(() => _currentIndex = 1);
          break;
        default:
          setState(() => _currentIndex = 0);
      }
    });

    // manage shortcut items
    quickActions.setShortcutItems([
      ShortcutItem(
        type: 'Planetary_Interaction',
        localizedTitle: S.of(context).o74isk_tabName_planetaryInteraction,
        icon: 'action_planetary_interaction',
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [HomeTab(), HomeTab()];

    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _tabs,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(S.of(context).o74isk_tabName_home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.brightness_1),
              title: Text(S.of(context).o74isk_tabName_planetaryInteraction),
            ),
          ],
          onTap: (index) => setState(() => _currentIndex = index),
        ));
  }
}
