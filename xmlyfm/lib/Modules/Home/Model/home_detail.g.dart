// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDetail _$HomeDetailFromJson(Map<String, dynamic> json) {
  return HomeDetail(
      json['bottomHasMore'] as bool,
      json['hasMore'] as bool,
      (json['list'] as List)
          ?.map((e) => e == null
              ? null
              : HomeDetailList.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['loopCount'] as int,
      json['moduleId'] as int,
      json['moduleType'] as String,
      json['showInterestCard'] as bool,
      json['title'] as String,
      json['targetId'] as int,
      json['direction'] as String,
      (json['keywords'] as List)
          ?.map((e) => e == null
              ? null
              : HomeDetailKeyword.fromJson(e as Map<String, dynamic>))
          ?.toList())
    ..isNewUser = json['isNewUser'] as bool;
}

Map<String, dynamic> _$HomeDetailToJson(HomeDetail instance) =>
    <String, dynamic>{
      'bottomHasMore': instance.bottomHasMore,
      'hasMore': instance.hasMore,
      'list': instance.list,
      'isNewUser': instance.isNewUser,
      'loopCount': instance.loopCount,
      'moduleId': instance.moduleId,
      'moduleType': instance.moduleType,
      'showInterestCard': instance.showInterestCard,
      'title': instance.title,
      'targetId': instance.targetId,
      'direction': instance.direction,
      'keywords': instance.keywords
    };
