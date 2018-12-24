import 'package:json_annotation/json_annotation.dart';

part 'home_detail_keyword.g.dart';

@JsonSerializable()
class HomeDetailKeyword {
  HomeDetailKeyword(
    this.categoryId,
    this.categoryTitle,
    this.keywordId,
    this.keywordName,
    this.keywordType,
    this.materialType,
    this.realCategoryId,
  );

  int categoryId; // 4
  String categoryTitle; // 娱乐
  int keywordId;
  String keywordName;
  int keywordType;
  String materialType;
  int realCategoryId;

  factory HomeDetailKeyword.fromJson(Map<String, dynamic> json) => _$HomeDetailKeywordFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDetailKeywordToJson(this);
}