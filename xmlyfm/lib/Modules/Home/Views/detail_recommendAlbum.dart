import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';
import 'package:xmlyfm/Configs/configs.dart';
import 'package:xmlyfm/Configs/xmly_api.dart';
import 'package:dio/dio.dart';
import 'package:xmlyfm/Modules/Home/Model/home_recommend.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailRecommendAlbum extends StatefulWidget {
  DetailRecommendAlbum(this.model) : assert(model != null);

  final HomeDetail model;

  @override
    _DetailRecommendAlbum createState() => _DetailRecommendAlbum();
}

class _DetailRecommendAlbum extends State<DetailRecommendAlbum> {

  List<HomeRecommend> models = [];

  @override
    void initState() {
      super.initState();
      _fetchRecommend();
    }

  @override
    Widget build(BuildContext context) {
      final imgHeight = fs>80.0;

      return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DetailTitleMore("为你推荐"),
            // x宫格
            FTCollectionView(
              itemCount: models.length ?? 0,
              itemSpacing: 10.0,
              lineSpacing: 10.0,
              padding: EdgeInsets.symmetric(horizontal: fs>10.0),
              builder: (context, index) {
                final item = models[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3.0),
                      child: Image.network(models[index].coverMiddle ?? "", width: imgHeight,)
                    ),
                    Expanded(child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: fs>10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.title ?? "", maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.black, fontSize: fs>18.0, fontWeight: FontWeight.bold,)),),
                            Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.recReason ?? "", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF9F9F9F), fontSize: fs>15.0),),),
                            Padding(padding: EdgeInsets.only(bottom: 5.0), child: Text(item.albumLabel ?? "", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF9F9F9F), fontSize: fs>15.0),),),
                            // Padding(padding: EdgeInsets.only(bottom: 5.0), child: Row(
                            //   children: <Widget>[
                            //     Icon(Icons.play_arrow, color: Color(0xFF9C9C9C), size: 20.0),
                            //     Text('${item.playsCount ?? 0}', style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 13.0, fontWeight: FontWeight.bold),),
                            //     Container(width: 15.0,),
                            //     Icon(Icons.graphic_eq, color: Color(0xFF9C9C9C), size: 18.0),
                            //     Text('${item.tracksCount ?? 0}集', style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 13.0, fontWeight: FontWeight.bold),),
                            //   ],
                            // )),
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

  _fetchRecommend() async {
    final dio = Dio();
    final response = await dio.get(home_recommend);
    List jsonArr = response.data['data']['albums'];
    List<HomeRecommend> models = jsonArr.map((json)=>HomeRecommend.fromJson(json)).toList();
    setState(() {
      this.models = models;
    });
  }
}