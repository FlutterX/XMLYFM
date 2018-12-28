import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'package:xmlyfm/Configs/configs.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailPaidCategory extends StatelessWidget {
  DetailPaidCategory(this.model) : assert(model != null);

  final HomeDetail model;
  final itemSpacing = 10.0;
  final columnNum = 3;
  final padding = EdgeInsets.symmetric(horizontal: 10.0);

  @override
    Widget build(BuildContext context) {
      final itemImageWH = (MediaQuery.of(context).size.width - padding.horizontal - (columnNum-1) * itemSpacing) / columnNum;

      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DetailTitleMore(model.title),
            // x宫格
            FTCollectionView(
              itemCount: model.list.length,
              columnNum: columnNum,
              itemSpacing: itemSpacing,
              lineSpacing: 10.0,
              padding: padding,
              builder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Stack(
                        children: <Widget>[
                          Image.network(model.list[index].pic, fit: BoxFit.fill, width: itemImageWH, height: itemImageWH,),
                          Positioned(left: 0, top: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(4.0)),
                              child: Container(width: 30.0, height: 16, color: themeColor,
                                child: Center(child: Text('精品', style: TextStyle(color: Colors.white, fontSize: fs>10.0),),),
                              ),
                            ),
                          ),
                          Positioned(bottom: 0, right: 0, left: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.black54, Colors.transparent],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter)),
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 3.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(Icons.star, color: Colors.white, size: fs>15,),
                                    Text(
                                      "${model.list[index].commentScore}",
                                      style: TextStyle(color: Colors.white, fontSize: fs>13.0),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(model.list[index].title, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: fs>15.0),),
                    Text(model.list[index].title, maxLines: 2, style: TextStyle(color: Colors.black38, fontSize: fs>13.0),)
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