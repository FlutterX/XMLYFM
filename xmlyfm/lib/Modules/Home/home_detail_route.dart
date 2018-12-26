import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:xmlyfm/Configs/xmly_api.dart';
import 'Model/home_detail.dart';
import 'Model/home_detail_list.dart';
import 'Views/detail_square.dart';
import 'Views/detail_focus.dart';
import 'Views/detail_topBuzz.dart';
import 'Views/detail_guessYouLike.dart';
import 'Views/detail_paidCategory.dart';
import 'Views/detail_categoriesForShort.dart';
import 'Views/detail_playlist.dart';
import 'Views/detail_oneKeyListen.dart';
import 'Views/detail_categoriesForLong.dart';
import 'Views/detail_microLesson.dart';
import 'Views/detail_live.dart';
import 'Views/detail_recommendAlbum.dart';

class HomeDetailRoute extends StatefulWidget {
  HomeDetailRoute({
    @required this.categoryId,
    this.bgAlphaBolck
  }): assert(categoryId != null);

  final int categoryId;
  final ValueChanged bgAlphaBolck;

  @override
  _HomeDetailRouteState createState() => _HomeDetailRouteState();
}

class _HomeDetailRouteState extends State<HomeDetailRoute> {
  List<HomeDetail> detailList = [];
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener((){
      if (widget.bgAlphaBolck == null) return;
      if (_scrollController.offset <= 0) {
        widget.bgAlphaBolck(255);
      } else {
        final delta = 10.0 - _scrollController.offset;
        delta <=0 ? widget.bgAlphaBolck(0) : widget.bgAlphaBolck((255 * delta / 10.0).floor());
      }
      // print("offset -- ${_scrollController.offset}");
    });
    _fetchDetail();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: createWidgets(),
    );
  }

  List<Widget> createWidgets() {
    if (detailList.isEmpty) return [];
    return detailList.map((model) {
      switch (model.fetchDetailType()) {
        case HomeDetailType.Focus:
          return SliverToBoxAdapter(child: DetailFocus(model.list));
        case HomeDetailType.Square:
          return DetailSquare(model.list);
        case HomeDetailType.TopBuzz:
          return SliverToBoxAdapter(child: DetailTopBuzz(model));
        case HomeDetailType.GuessYouLike:
          return SliverToBoxAdapter(child: DetailGuessYouLike(model));
        case HomeDetailType.PaidCategory:
          return SliverToBoxAdapter(child: DetailPaidCategory(model));
        case HomeDetailType.CategoriesForShort:
          return SliverToBoxAdapter(child: DetailCategoriesForShort(model));
        case HomeDetailType.Playlist:
          return SliverToBoxAdapter(child: DetailPlaylist(model));
        case HomeDetailType.OneKeyListen:
          return SliverToBoxAdapter(child: DetailOneKeyListen(model));
        case HomeDetailType.CategoriesForLong:
          return SliverToBoxAdapter(child: DetailCategoriesForLong(model));
        case HomeDetailType.MicroLesson:
          return SliverToBoxAdapter(child: DetailMicroLesson(model));
        case HomeDetailType.Live:
          return SliverToBoxAdapter(child: DetailLive(model));
        case HomeDetailType.CategoriesForExplore:
          return SliverToBoxAdapter(child: DetailCategoriesForShort(model));
        case HomeDetailType.Ad: 
        return SliverToBoxAdapter(child: Container());
          // return SliverToBoxAdapter(child: Text('Ad'));
        case HomeDetailType.RecommendAlbum:
          return SliverToBoxAdapter(child: DetailRecommendAlbum(model));
        default: return SliverToBoxAdapter();
      }
    }).toList();
  }

  void _fetchDetail() async {
    final dio = Dio();
    final response = await dio.get(home_detail, data: {
      'categoryId': widget.categoryId, // '-2'
      'device': 'android',
      'deviceId': 'android',
      'includeActivity': true,
      'includeSpecial': true,
      'pullToRefresh': false,
      'version': '6.5.39'
    });
    List list = response.data['list'];
    List<HomeDetail> detailList = [];
    for (var i = 0; i < list.length; i++) {
      final detail = HomeDetail.fromJson(list[i]);
      // banner需要特殊处理
      if (detail.fetchDetailType() == HomeDetailType.Focus) {
        final List bannerList = response.data['list'][i]['list'][0]['data'];
        detail.list = bannerList.map((json) => HomeDetailList.fromJson(json)).toList();
      }
      detailList.add(detail);
    }
    setState(() {
      this.detailList = detailList;
    });
  }
}
