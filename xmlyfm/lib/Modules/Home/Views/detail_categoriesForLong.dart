import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'detail_categoriesForShort.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailCategoriesForLong extends StatelessWidget {
  DetailCategoriesForLong(this.model) : assert(model != null);

  final HomeDetail model;

  @override
    Widget build(BuildContext context) {
      switch (model.fetchCategoriesDirection()) {
        case DetailCategoriesDirection.Column: return DetailCategoriesForShort(model);
        default:
        final itemSpacing = 10.0;
        final columnNum = 3;
        final padding = EdgeInsets.symmetric(horizontal: 10.0);
        final itemImageWH = (MediaQuery.of(context).size.width - padding.horizontal - (columnNum-1) * itemSpacing) / columnNum;

        final keywords = model.keywords.length > 4 ? model.keywords.sublist(0, 4): model.keywords.sublist(0);
        return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DetailTitleMore(model.title),
            // keywords
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Wrap(
                spacing: 10.0, // 主轴方向间距
                runSpacing: 4.0, // 纵轴方向间距
                children: keywords.map((item){
                  return DecoratedBox(
                    decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(fs>20.0),
                          color: Colors.white
                        ),
                    child: Padding(
                          padding: EdgeInsets.symmetric(vertical: fs>8.0, horizontal: fs>15.0),
                          child: Text(item.keywordName, style: TextStyle(fontSize: fs>14.0)),
                        ),
                  );
                }).toList()
              ),
            ),
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
                          Positioned(bottom: 0, right: 0, left: 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.black54, Colors.transparent],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter)),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.play_arrow, color: Colors.white, size: fs>17,),
                                  Text(
                                    "${model.list[index].playsCount}",
                                    style: TextStyle(color: Colors.white, fontSize: fs>13.0,)
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(height: fs>8.0,),
                    Text(model.list[index].title, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: fs>18.0, fontWeight: FontWeight.bold,)),
                    Text(model.list[index].subtitle, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF9F9F9F), fontSize: fs>13.0))
                  ],
                );
              },
            ),
            DetailRefresh(),
            DetailBottomLine()
          ],
        ),
      );;
      }
    }
}