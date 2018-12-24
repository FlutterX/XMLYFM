import 'package:json_annotation/json_annotation.dart';

part 'home_category_item.g.dart';

@JsonSerializable()
class HomeCategoryItem {
  HomeCategoryItem(
    this.id, 
    this.title, 
    this.itemType, 
    this.categoryId, 
    this.categoryType, 
    this.moduleType, 
    this.isDisplayCornerMark,
    this.cornerMark, 
    this.coverPath,
    this.unactiveCoverPath, 
    this.activeCoverPath,
    this.recommendType, 
    this.url,
    this.defaultSelected, 
    this.audioStreamId,
    this.hideInReview, 
  );

  String id; // single_category-49
  String title; // 小说
  String itemType; // single_category
  int categoryId; // 49
  String categoryType; 
  String moduleType;
  bool isDisplayCornerMark;
  String cornerMark;
  String coverPath;
  String unactiveCoverPath;
  String activeCoverPath;
  String recommendType; // normal
  String url;
  bool defaultSelected; // false
  String audioStreamId;
  bool hideInReview; // true


  factory HomeCategoryItem.fromJson(Map<String, dynamic> json) => _$HomeCategoryItemFromJson(json);
  Map<String, dynamic> toJson() => _$HomeCategoryItemToJson(this);
}