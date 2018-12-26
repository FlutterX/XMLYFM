import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'package:xmlyfm/Configs/configs.dart';

class DetailLive extends StatelessWidget {
  DetailLive(this.model) : assert(model != null);

  final HomeDetail model;

  @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            DetailTitleMore(model.title),
            // x宫格
            FTCollectionView(
              itemCount: model.list.length,
              columnNum: 3,
              itemSpacing: 10.0,
              lineSpacing: 10.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              builder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Stack(
                        children: <Widget>[
                          Image.network(model.list[index].coverMiddle ?? "",),
                          Positioned(bottom: 0, right: 0, left: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.black54, Colors.transparent],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter)),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.play_arrow, color: Colors.white, size: 17,),
                                  Expanded(child: Text(
                                    "${model.list[index].playCount ?? 0}",
                                    style: TextStyle(color: Colors.white, fontSize: 13.0,)
                                  ),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 3.0, bottom: 3.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(color: themeColor),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.0),
                                            child: Text(model.list[index].categoryName ?? "", style: TextStyle(color: Colors.white, fontSize: 13.0)),
                                          ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(height: 8.0,),
                    Text(model.list[index].name ?? "", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold,)),
                    Text(model.list[index].nickname ?? "", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 13.0))
                  ],
                );
              },
            ),
            DetailRefresh(),
            DetailBottomLine()
          ],
        ),
      );
    }
}