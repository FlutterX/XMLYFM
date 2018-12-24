// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_banner_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBannerItem _$HomeBannerItemFromJson(Map<String, dynamic> json) {
  return HomeBannerItem(
      json['adId'] as int,
      json['adType'] as int,
      json['buttonShowed'] as bool,
      json['clickAction'] as int,
      json['clickType'] as int,
      json['cover'] as String,
      json['description'] as String,
      json['displayType'] as int,
      json['isAd'] as bool,
      json['isInternal'] as int,
      json['isLandScape'] as bool,
      json['isShareFlag'] as bool,
      json['link'] as String,
      json['name'] as String,
      json['openlinkType'] as int,
      json['realLink'] as String,
      json['targetId'] as int);
}

Map<String, dynamic> _$HomeBannerItemToJson(HomeBannerItem instance) =>
    <String, dynamic>{
      'adId': instance.adId,
      'adType': instance.adType,
      'buttonShowed': instance.buttonShowed,
      'clickAction': instance.clickAction,
      'clickType': instance.clickType,
      'cover': instance.cover,
      'description': instance.description,
      'displayType': instance.displayType,
      'isAd': instance.isAd,
      'isInternal': instance.isInternal,
      'isLandScape': instance.isLandScape,
      'isShareFlag': instance.isShareFlag,
      'link': instance.link,
      'name': instance.name,
      'openlinkType': instance.openlinkType,
      'realLink': instance.realLink,
      'targetId': instance.targetId
    };
