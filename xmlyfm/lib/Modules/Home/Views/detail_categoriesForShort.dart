import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'package:xmlyfm/Configs/configs.dart';

class DetailCategoriesForShort extends StatelessWidget {
  DetailCategoriesForShort(this.model) : assert(model != null);

  final HomeDetail model;

  @override
    Widget build(BuildContext context) {
      final imgHeight = 80.0;
      final keywords = model.keywords.length > 4 ? model.keywords.sublist(0, 4): model.keywords.sublist(0);

      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DetailTitleMore(model.title),
            // keywords
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 30.0),
              child: Wrap(
                spacing: 10.0, // 主轴方向间距
                runSpacing: 4.0, // 纵轴方向间距
                children: keywords.map((item){
                  return DecoratedBox(
                    decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white
                        ),
                    child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                          child: Text(item.keywordName),
                        ),
                  );
                }).toList()
              ),
            ),
            // x宫格
            FTCollectionView(
              itemCount: model.list.length,
              itemSpacing: 10.0,
              lineSpacing: 10.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              builder: (context, index) {
                final item = model.list[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.network(model.list[index].pic ?? "", width: imgHeight,)
                    ),
                    Expanded(child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold,)),),
                            Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 15.0),),),
                            Padding(padding: EdgeInsets.only(bottom: 5.0), child: Row(
                              children: <Widget>[
                                Icon(Icons.play_arrow, color: Color(0xFF9C9C9C), size: 20.0),
                                Text('${item.playsCount ?? 0}', style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 13.0, fontWeight: FontWeight.bold),),
                                Container(width: 15.0,),
                                Icon(Icons.graphic_eq, color: Color(0xFF9C9C9C), size: 18.0),
                                Text('${item.tracksCount ?? 0}集', style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 13.0, fontWeight: FontWeight.bold),),
                              ],
                            )),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                              child: Container(height: 1, color: bgColor,),
                            )
                          ],),
                    ),)
                  ],);
              },
            ),
            DetailRefresh(),
            DetailBottomLine()
          ],
        ),
      );
    }
}