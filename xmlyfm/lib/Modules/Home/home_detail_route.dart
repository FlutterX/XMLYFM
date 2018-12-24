import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
import 'package:xmlyfm/Configs/xmly_api.dart';
import 'Model/home_detail.dart';
import 'Model/home_banner_item.dart';

class HomeDetailRoute extends StatefulWidget {
  @override
    _HomeDetailRouteState createState() => _HomeDetailRouteState();
}

class _HomeDetailRouteState extends State<HomeDetailRoute> {
  List<HomeBannerItem> banners = [];

  @override
    void initState() {
      super.initState();
      _fetchDetail();
    }

  @override
    Widget build(BuildContext context) {
      return banners.length <= 0 ? Container() :
      Swiper(
        itemCount: banners.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
        itemBuilder: (ctx, index) {
          print(banners[index].cover);
          Image.network(banners[index].cover, fit: BoxFit.fill);
        },
      );
    }

  void _fetchDetail() async {
    final dio = Dio();
    final response = await dio.get(home_detail, data: {'categoryId':'-2', 'device':'android', 'deviceId':'android', 'includeActivity':true, 'includeSpecial':true, 'pullToRefresh':false, 'version':'6.5.39'});
    List list = response.data['list'];

    for (var i = 0; i < list.length; i++) {
      final detail = HomeDetail.fromJson(list[i]);
      if (detail.fetchDetailType() == HomeDetailType.Focus) {
        List jsonArr = response.data['list'][i]['list'][0]['data'];
        if (jsonArr == null) continue;
        List<HomeBannerItem> banners = jsonArr.map((json)=>HomeBannerItem.fromJson(json)).toList();

        print(banners.length);
        setState(() {
          this.banners = banners;
        });
      }
    }
    // final detail = list.map((item)=>HomeDetail.fromJson(item));
    
    // print(response.data.toString());
  }
}