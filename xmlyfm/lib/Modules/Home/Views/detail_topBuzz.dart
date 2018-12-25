import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'detail_bottom_line.dart';
import 'package:xmlyfm/Configs/configs.dart';

class DetailTopBuzz extends StatelessWidget {
  DetailTopBuzz(this.model) : assert(model != null);

  final HomeDetail model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 40.0,
            child: Row(
              children: <Widget>[
                Text(
                  model.title,
                  style: TextStyle(
                      color: themeColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Swiper(
                    autoplayDelay: 3000,
                    autoplay: true,
                    scrollDirection: Axis.vertical,
                    itemCount: model.list.length,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          model.list[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 11.0),
                  child: Container(width: 1, color: Colors.grey.withAlpha(100),),
                ),
                InkWell(
                  child: Text('更多'),
                ),
              ],
            ),
          ),
        ),
        DetailBottomLine()
      ],
    );
  }
}
