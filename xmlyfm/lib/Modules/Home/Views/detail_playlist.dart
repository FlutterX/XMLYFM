import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'package:xmlyfm/Configs/configs.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailPlaylist extends StatelessWidget {
  DetailPlaylist(this.model) : assert(model != null);

  final HomeDetail model;

  @override
    Widget build(BuildContext context) {
      final imgHeight = fs>80.0;
      
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
              itemSpacing: 10.0,
              lineSpacing: 10.0,
              padding: EdgeInsets.symmetric(horizontal: fs>10.0),
              builder: (context, index) {
                final item = model.list[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.network(model.list[index].coverPath ?? "", width: imgHeight,)
                    ),
                    Expanded(child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: fs>10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: fs>18.0, fontWeight: FontWeight.bold,)),),
                          Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF9F9F9F), fontSize: fs>15.0),),),
                          Padding(padding: EdgeInsets.only(bottom: 5.0), child: Row(children: <Widget>[
                            Icon(Icons.adjust, color: Color(0xFF9C9C9C), size: fs>20.0),
                            Text(item.footnote ?? "", style: TextStyle(color: Color(0xFF9F9F9F), fontSize: fs>13.0, fontWeight: FontWeight.bold)),
                          ],)),
                          Padding(
                            padding: EdgeInsets.only(top: fs>5.0, left: .0),
                            child: Container(height: 1, color: bgColor,),
                          )
                        ],
                      ),
                    ),)
                  ],);
              },
            ),
            DetailBottomLine()
          ],
        ),
      );
    }
}