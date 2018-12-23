import 'package:flutter/material.dart';

class VerticalButton extends StatelessWidget {
  VerticalButton({
    Key key,
    @required this.onPressed,
    this.title,
    this.icon,
    this.space = 0,
    this.backgroundColor = Colors.transparent
  });
  /// 标题
  final Widget title;
  /// 背景颜色
  final Color backgroundColor;
  /// 点击回调
  final VoidCallback onPressed;
  /// 间距
  final double space;
  /// 图标
  final Widget icon;
  
  @override
    Widget build(BuildContext context) {
      return FlatButton(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            Container(height: space,),
            title,
          ],
        ),
        onPressed: onPressed,
      );
    }
}