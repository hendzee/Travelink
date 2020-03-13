import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;
import './home_tab_screen.dart';

class MainTabScreens extends StatefulWidget {
  @override
  _MainTabScreensState createState() => _MainTabScreensState();
}

class _MainTabScreensState extends State<MainTabScreens> {
  var _position = 0;
  List<Widget> _tabList = [ HomeTabScreen(), HomeTabScreen(), HomeTabScreen(), HomeTabScreen(), HomeTabScreen() ];

  // Set tab position
  void _setPositionTab(index){
    setState(() {
      _position = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return eva.EqLayout(
      child: Center(
        child: _tabList[ _position ],
      ),
      bottomTabBar: eva.EqTabBar(

        defaultSelected: _position,
        onSelect: _setPositionTab,
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
