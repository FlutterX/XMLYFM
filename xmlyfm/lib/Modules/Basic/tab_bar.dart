import 'package:flutter/material.dart';

const double _kBottomMargin = 8.0;

class LXFTabBar extends StatefulWidget {
  LXFTabBar({
    Key key,
    @required this.currentIndex,
    @required this.items,
    this.separatorColor = Colors.transparent,
    this.separatorHeight = 1.0,
    this.backgroundColor = Colors.white,
    this.itemSpacing = .0,
    this.onTap,
  }): 
    assert(0 <= currentIndex && currentIndex < items.length),
    super(key: key);

  /// 当前选中的下标
  final int currentIndex;

  /// item数组
  final List<BottomNavigationBarItem> items;

  /// 分割线颜色
  final Color separatorColor;

  /// 分割线高度
  final double separatorHeight;

  /// 背景颜色
  final Color backgroundColor;

  /// item 中 Icon 与 Text 的间距
  final double itemSpacing;

  /// item 点击回调
  final ValueChanged<int> onTap;

  @override
  _LXFTabBarState createState() => _LXFTabBarState();
}

class _LXFTabBarState extends State<LXFTabBar> {
  int _curIndex;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double additionalBottomPadding =
        MediaQuery.of(context).padding.bottom;

    _curIndex = widget.currentIndex;

    return Container(
      height: kBottomNavigationBarHeight + additionalBottomPadding,
      // height: kBottomNavigationBarHeight + additionalBottomPadding,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        boxShadow: [BoxShadow(color: Color(0xFFCCCCCC), offset: Offset(0, 0), blurRadius: 1.0)]
      ),
      child: Container(
        height: kBottomNavigationBarHeight,
        child: Column(
          children: <Widget>[
            // separator
            Container(
              decoration: BoxDecoration(color: widget.separatorColor),
              height: widget.separatorHeight,
            ),
            Container(
              // items View
              height: kBottomNavigationBarHeight - widget.separatorHeight,
              constraints:
                  BoxConstraints(maxHeight: kBottomNavigationBarHeight),
              child: Row(
                children: widget.items
                    .asMap()
                    .map((index, item) {
                      Widget child;
                      if (item.title == null) { // 仅图标
                        child = item.icon;
                      } else { // 图标 + 文字
                        child = Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            (_curIndex == index && item.activeIcon != null)
                                ? item.activeIcon
                                : item.icon,
                            Container(
                              height: widget.itemSpacing,
                            ),
                            item.title
                          ],
                        );
                      }

                      return MapEntry(
                          index,
                          Expanded(
                            child: InkResponse(
                              onTap: () => widget.onTap(index),
                              child: child,
                            ),
                          ));
                    })
                    .values
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
