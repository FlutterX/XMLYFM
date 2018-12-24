// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_detail_keyword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDetailKeyword _$HomeDetailKeywordFromJson(Map<String, dynamic> json) {
  return HomeDetailKeyword(
      json['categoryId'] as int,
      json['categoryTitle'] as String,
      json['keywordId'] as int,
      json['keywordName'] as String,
      json['keywordType'] as int,
      json['materialType'] as String,
      json['realCategoryId'] as int);
}

Map<String, dynamic> _$HomeDetailKeywordToJson(HomeDetailKeyword instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryTitle': instance.categoryTitle,
      'keywordId': instance.keywordId,
      'keywordName': instance.keywordName,
      'keywordType': instance.keywordType,
      'materialType': instance.materialType,
      'realCategoryId': instance.realCategoryId
    };
