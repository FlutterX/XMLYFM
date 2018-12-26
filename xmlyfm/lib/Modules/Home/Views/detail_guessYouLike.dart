import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'detail_title_more.dart';
import 'detail_refresh.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Modules/Basic/ft_collection_view.dart';

class DetailGuessYouLike extends StatelessWidget {
  DetailGuessYouLike(this.model) : assert(model != null);

  final HomeDetail model;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            DetailTitleMore('猜你喜欢'),
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
                          Image.network(model.list[index].pic,),
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
                                  Text(
                                    "${model.list[index].playsCount ?? 0}",
                                    style: TextStyle(color: Colors.white, fontSize: 13.0,)
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(model.list[index].title, maxLines: 2)
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
