// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_category_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeCategoryItem _$HomeCategoryItemFromJson(Map<String, dynamic> json) {
  return HomeCategoryItem(
      json['id'] as String,
      json['title'] as String,
      json['itemType'] as String,
      json['categoryId'] as int,
      json['categoryType'] as String,
      json['moduleType'] as String,
      json['isDisplayCornerMark'] as bool,
      json['cornerMark'] as String,
      json['coverPath'] as String,
      json['unactiveCoverPath'] as String,
      json['activeCoverPath'] as String,
      json['recommendType'] as String,
      json['url'] as String,
      json['defaultSelected'] as bool,
      json['audioStreamId'] as String,
      json['hideInReview'] as bool);
}

Map<String, dynamic> _$HomeCategoryItemToJson(HomeCategoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'itemType': instance.itemType,
      'categoryId': instance.categoryId,
      'categoryType': instance.categoryType,
      'moduleType': instance.moduleType,
      'isDisplayCornerMark': instance.isDisplayCornerMark,
      'cornerMark': instance.cornerMark,
      'coverPath': instance.coverPath,
      'unactiveCoverPath': instance.unactiveCoverPath,
      'activeCoverPath': instance.activeCoverPath,
      'recommendType': instance.recommendType,
      'url': instance.url,
      'defaultSelected': instance.defaultSelected,
      'audioStreamId': instance.audioStreamId,
      'hideInReview': instance.hideInReview
    };
