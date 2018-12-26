import 'package:json_annotation/json_annotation.dart';
import 'home_detail_list.dart';
import 'home_detail_keyword.dart';

part 'home_detail.g.dart';

enum HomeDetailType {
  Focus,
  Square,
  TopBuzz,
  GuessYouLike,
  PaidCategory,
  CategoriesForShort,
  Playlist,
  OneKeyListen,
  CategoriesForLong,
  MicroLesson,
  Live,
  CategoriesForExplore,
  Ad,
  RecommendAlbum
}

enum DetailCategoriesDirection {
  Column,
  Row
}

@JsonSerializable()
class HomeDetail {
  HomeDetail(
    this.bottomHasMore, 
    this.hasMore, 
    this.list, 
    this.isNewUser,
    this.loopCount,
    this.moduleId,
    this.moduleType,
    this.showInterestCard,
    this.title,
    this.targetId,
    this.direction,
    this.keywords,
  );

  bool bottomHasMore; // true
  bool hasMore; // true
  List<HomeDetailList> list; 
  bool isNewUser;
  int loopCount;
  int moduleId; // 1
  String moduleType; // forcus
  bool showInterestCard;
  String title;
  int targetId;
  String direction;
  List<HomeDetailKeyword> keywords; 

  factory HomeDetail.fromJson(Map<String, dynamic> json) => _$HomeDetailFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDetailToJson(this);

  HomeDetailType fetchDetailType() {
    switch (moduleType) {
      case "focus": return HomeDetailType.Focus;
      case "square": return HomeDetailType.Square;
      case "topBuzz": return HomeDetailType.TopBuzz;
      case "guessYouLike": return HomeDetailType.GuessYouLike;
      case "paidCategory": return HomeDetailType.PaidCategory;
      case "categoriesForShort": return HomeDetailType.CategoriesForShort;
      case "playlist": return HomeDetailType.Playlist;
      case "oneKeyListen": return HomeDetailType.OneKeyListen;
      case "categoriesForLong": return HomeDetailType.CategoriesForLong;
      case "microLesson": return HomeDetailType.MicroLesson;
      case "live": return HomeDetailType.Live;
      case "categoriesForExplore": return HomeDetailType.CategoriesForExplore;
      case "ad": return HomeDetailType.Ad;
      case "recommendAlbum": return HomeDetailType.RecommendAlbum;
      default: return HomeDetailType.RecommendAlbum;
    }
  }
  DetailCategoriesDirection fetchCategoriesDirection() {
    switch (direction) {
      case "column" : return DetailCategoriesDirection.Column;
      case "row" : return DetailCategoriesDirection.Row;
      default: return DetailCategoriesDirection.Column;
    }
  }
}