// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_recommend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeRecommend _$HomeRecommendFromJson(Map<String, dynamic> json) {
  return HomeRecommend(
      json['albumId'] as int,
      json['isFinished'] as int,
      json['lastUpdateAt'] as int,
      json['refundSupportType'] as int,
      json['isDraft'] as bool,
      json['isPaid'] as bool,
      json['albumLabel'] as String,
      json['cornerMark'] as String,
      json['coverMiddle'] as String,
      json['coverSmall'] as String,
      json['nickname'] as String,
      json['recReason'] as String,
      json['recSrc'] as String,
      json['recTrack'] as String,
      json['title'] as String);
}

Map<String, dynamic> _$HomeRecommendToJson(HomeRecommend instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'isFinished': instance.isFinished,
      'lastUpdateAt': instance.lastUpdateAt,
      'refundSupportType': instance.refundSupportType,
      'isDraft': instance.isDraft,
      'isPaid': instance.isPaid,
      'albumLabel': instance.albumLabel,
      'cornerMark': instance.cornerMark,
      'coverMiddle': instance.coverMiddle,
      'coverSmall': instance.coverSmall,
      'nickname': instance.nickname,
      'recReason': instance.recReason,
      'recSrc': instance.recSrc,
      'recTrack': instance.recTrack,
      'title': instance.title
    };
