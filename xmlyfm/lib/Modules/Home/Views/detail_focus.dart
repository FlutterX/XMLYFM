import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail_list.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailFocus extends StatelessWidget {
  DetailFocus(this.models) : assert(models != null);

  final List<HomeDetailList> models;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints.loose(Size(MediaQuery.of(context).size.width, fs>>160.0)),
      child: Swiper(
        autoplay: true,
        itemCount: models.length,
        // pagination: SwiperPagination(),
        pagination: SwiperCustomPagination(
            builder: (BuildContext context, SwiperPluginConfig config) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black.withAlpha(15),
                    borderRadius: BorderRadius.circular(5.0)),
                child: DotSwiperPaginationBuilder(
                        size: fs(5.0),
                        activeSize: fs(7.0),
                        color: Colors.grey,
                        activeColor: Colors.white)
                    .build(context, config),
              ),
            ),
          );
        }),
        itemBuilder: (ctx, index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Image.network(models[index].cover, fit: BoxFit.fill),
            ),
          );
        },
      ),
    );
  }
}
