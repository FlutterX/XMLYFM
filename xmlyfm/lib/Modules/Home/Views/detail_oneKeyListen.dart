import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailOneKeyListen extends StatelessWidget {
  DetailOneKeyListen(this.model) : assert(model != null);

  final HomeDetail model;

  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DetailTitleMore(model.title),
            // keywords
            // x宫格
            FTCollectionView(
              itemCount: model.list.length,
              columnNum: 3,
              builder: (context, index) {
                final item = model.list[index];
                return Center(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(item.coverRound ?? "", width: fs>80.0,),
                    Container(height: fs>5.0,),
                    Text(item.channelName ?? "", style: TextStyle(color: Color(0xFF9F9F9F), fontSize: fs>13.0, fontWeight: FontWeight.bold)),
                  ],
                ),);
              },
            ),
            DetailRefresh(),
            DetailBottomLine()
          ],
        ),
      );
    }
}