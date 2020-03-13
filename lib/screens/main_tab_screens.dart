import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;

class MainTabScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return eva.EqLayout(
      child: Center(
        child: Text('This is main page.'),
      ),
      bottomTabBar: eva.EqTabBar(
        defaultSelected: 0,
        onSelect: (v){},
        tabs: [
          eva.EqTabData.fromIcon(title: 'Home', icon: eva.EvaIcons.homeOutline),
          eva.EqTabData.fromIcon(title: 'Explore', icon: eva.EvaIcons.compassOutline),
          eva.EqTabData.fromIcon(title: 'Add', icon: eva.EvaIcons.plusCircleOutline),
          eva.EqTabData.fromIcon(title: 'My Story', icon: eva.EvaIcons.bookOpenOutline),
          eva.EqTabData.fromIcon(title: 'Account', icon: eva.EvaIcons.personOutline),
        ],
      ),
    );
  }
}
