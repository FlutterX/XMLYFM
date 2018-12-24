// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_detail_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDetailList _$HomeDetailListFromJson(Map<String, dynamic> json) {
  return HomeDetailList(
      json['albumId'] as int,
      json['albumTitle'] as String,
      json['commentsCounts'] as int,
      json['coverSmall'] as String,
      json['createdAt'] as int,
      json['duration'] as int,
      json['favoritesCounts'] as int,
      json['id'] as int,
      json['isAuthorized'] as bool,
      json['isFree'] as bool,
      json['isPaid'] as bool,
      json['nickname'] as String,
      json['playPath32'] as String,
      json['playPath64'] as String,
      json['playPathAacv164'] as String,
      json['playPathAacv224'] as String,
      json['playsCounts'] as int,
      json['priceTypeId'] as int,
      json['sampleDuration'] as int,
      json['sharesCounts'] as int,
      json['tags'] as String,
      json['title'] as String,
      json['trackId'] as int,
      json['uid'] as int,
      json['updatedAt'] as int,
      json['userSource'] as int);
}

Map<String, dynamic> _$HomeDetailListToJson(HomeDetailList instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'albumTitle': instance.albumTitle,
      'commentsCounts': instance.commentsCounts,
      'coverSmall': instance.coverSmall,
      'createdAt': instance.createdAt,
      'duration': instance.duration,
      'favoritesCounts': instance.favoritesCounts,
      'id': instance.id,
      'isAuthorized': instance.isAuthorized,
      'isFree': instance.isFree,
      'isPaid': instance.isPaid,
      'nickname': instance.nickname,
      'playPath32': instance.playPath32,
      'playPath64': instance.playPath64,
      'playPathAacv164': instance.playPathAacv164,
      'playPathAacv224': instance.playPathAacv224,
      'playsCounts': instance.playsCounts,
      'priceTypeId': instance.priceTypeId,
      'sampleDuration': instance.sampleDuration,
      'sharesCounts': instance.sharesCounts,
      'tags': instance.tags,
      'title': instance.title,
      'trackId': instance.trackId,
      'uid': instance.uid,
      'updatedAt': instance.updatedAt,
      'userSource': instance.userSource
    };
