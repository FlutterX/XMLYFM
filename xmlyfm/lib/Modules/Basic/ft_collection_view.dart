import 'package:flutter/material.dart';

typedef FTIndexedWidgetBuilder = Widget Function(
    BuildContext context, int index);

class FTCollectionView extends StatelessWidget {
  FTCollectionView({
    Key key, 
    @required this.itemCount, 
    @required this.builder,
    this.columnNum = 1, 
    this.itemSpacing = 0,
    this.lineSpacing = 0,
    this.padding = EdgeInsets.zero
  }) : super(key: key);

  /// 子控件总数
  final int itemCount;
  /// 列数
  final int columnNum;
  /// 构建item闭包
  final FTIndexedWidgetBuilder builder;
  /// 单元格间的横向间距
  final double itemSpacing;
  /// 纵向的行间距
  final double lineSpacing;
  /// 视图内边距
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final viewWidth = screenWidth - padding.horizontal;
    final itemWidth = (viewWidth - (columnNum - 1) * itemSpacing) / columnNum;
    // print('padding.horizontal -- ${padding.horizontal}');
    // print('screenWidth -- $screenWidth');
    // print('viewWidth -- $viewWidth');
    // print('itemWidth -- $itemWidth');

    List<Widget> widgets = [];
    int curIndex = 0;
    for (var i = 0; i < itemCount; i++) {
      curIndex = i % columnNum;
      widgets.add(Padding(
        padding: EdgeInsets.only(left: curIndex != 0 ? itemSpacing : 0),
        child: Container(width: itemWidth, child: builder(context, i)),
      ));
    }
    
    List<Widget> rows = [];
    final row = (itemCount / columnNum).ceil();
    // print("row : $row");
    for (var i = 0; i < row; i++) {
      final curMaxCount = (i + 1) * columnNum;
      // print("curMaxCount : $curMaxCount");
      rows.add(Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: curMaxCount >= widgets.length
              ? widgets.sublist(i * columnNum)
              : widgets.sublist(i * columnNum, curMaxCount)));
      if ((i + 1) < row) {
        rows.add(Container(height: lineSpacing));
      }
    }
    
    return Padding(padding: padding, child: Column(children: rows),);
  }
}
