import 'package:flutter/material.dart';

enum MeCellType {
  Switch,
  Url,
}

class MeCellConfig {
  MeCellConfig({
    @required this.type,
    this.urlTitle,
    this.switchValue = false,
  }) : assert((type == MeCellType.Url && urlTitle.length != 0) ||
            type == MeCellType.Switch);

  final String urlTitle;
  final MeCellType type;
  final bool switchValue;
}

class MeCell extends StatelessWidget {
  MeCell({
    Key key,
    @required this.title,
    this.config,
  });

  final String title;
  final MeCellConfig config;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              createWidget(),
            ],
          ),
        ),
        // 底部横线
        Container(
          color: Color(0xFFEAEAE6),
          height: 1.0,
        )
      ],
    );
  }

  Widget createWidget() {
    final Widget arrow = Padding(
      child: Icon(Icons.arrow_right),
      padding: EdgeInsets.only(right: 10.0),
    );
    if (config == null) return arrow;
    switch (config.type) {
      case MeCellType.Switch:
        return Switch(
          value: config.switchValue,
          onChanged: (isTrue) {},
        );
      case MeCellType.Url:
        return Row(
          textDirection: TextDirection.rtl, 
          children: <Widget>[
            arrow, 
            Text(config.urlTitle, style: TextStyle(color: Color(0xFFFF5731), fontWeight: FontWeight.bold, fontSize: 13.0),)
          ]
        );
      default:
        return arrow;
    }
  }
}
