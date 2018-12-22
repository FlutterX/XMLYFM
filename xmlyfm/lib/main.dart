import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/home_route.dart';
import 'package:xmlyfm/Modules/Listen/listen_route.dart';
import 'package:xmlyfm/Modules/Find/find_route.dart';
import 'package:xmlyfm/Modules/Me/me_route.dart';
import 'dart:math' as math;
import 'Modules/Basic/tab_bar.dart';

const double _kBottomMargin = 8.0;
void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  List<Image> _tabImages;
  List<Image> _tabHighlightImages;
  var _tabTitels = ['首页', '我听', "", '发现', '我的'];
  var _bodys = [
    HomeRoute(),
    ListenRoute(),
    ListenRoute(),
    FindRoute(),
    MeRoute()
  ];

  @override
  void initState() {
    super.initState();
    _tabImages = [
      fetchTabImage('host_home_page_tab_01.png'),
      fetchTabImage('host_my_listen_tab_01.png'),
      fetchTabImage('host_theme_global_play_default.png', onlyIcon: true),
      fetchTabImage('host_find_tab_01.png'),
      fetchTabImage('host_mine_tab_01.png')
    ];
    _tabHighlightImages = [
      fetchTabImage('host_home_page_tab_15.png'),
      fetchTabImage('host_my_listen_tab_15.png'),
      fetchTabImage('host_theme_global_play_default.png', onlyIcon: true),
      fetchTabImage('host_find_tab_15.png'),
      fetchTabImage('host_mine_tab_15.png'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // final double additionalBottomPadding = math.max(MediaQuery.of(context).padding.bottom - _kBottomMargin, 0.0);

    return MaterialApp(
      title: '喜马拉雅FM APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: _bodys[_tabIndex],
          bottomNavigationBar: LXFTabBar(
            currentIndex: _tabIndex,
            items: _tabImages
                .asMap()
                .map((index, _) => MapEntry(
                    index,
                    BottomNavigationBarItem(
                        icon: fetchTabIcon(index),
                        title: fetchTabTitle(index),
                        activeIcon: fetchTabIcon(index, isHighlight: true))))
                .values
                .toList(),
            onTap: (index) {
              setState(() {
                _tabIndex = index;
              });
            },
          )),
    );
  }

  Image fetchTabImage(String path, {bool onlyIcon = false}) {
    // BottomNavigationBar
    double iconWH = onlyIcon ? 45.0 : 35.0;
    return Image.asset("images/tabbar/" + path, width: iconWH, height: iconWH);
  }

  Image fetchTabIcon(int index, {bool isHighlight = false}) {
    return isHighlight ? _tabHighlightImages[index] : _tabImages[index];
  }

  Text fetchTabTitle(int index) {
    if (_tabTitels[index] == "") return null;
    return Text(
      _tabTitels[index],
      style: TextStyle(
          color: Color(index == _tabIndex ? 0xFFFF5731 : 0xFFCCCCCC),
          fontSize: 11.0),
    );
  }
}
