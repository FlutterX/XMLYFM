// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_track_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumTrackItem _$AlbumTrackItemFromJson(Map<String, dynamic> json) {
  return AlbumTrackItem(
      json['albumId'] as int,
      json['categoryId'] as int,
      json['comments'] as int,
      json['createdAt'] as int,
      json['duration'] as int,
      json['likes'] as int,
      json['opType'] as int,
      json['orderNo'] as int,
      json['playtimes'] as int,
      json['processState'] as int,
      json['relatedId'] as int,
      json['sampleDuration'] as int,
      json['shares'] as int,
      json['status'] as int,
      json['trackId'] as int,
      json['trackRecordId'] as int,
      json['type'] as int,
      json['uid'] as int,
      json['userSource'] as int,
      json['isDraft'] as bool,
      json['isHoldCopyright'] as bool,
      json['isPaid'] as bool,
      json['isPublic'] as bool,
      json['isRichAudio'] as bool,
      json['isVideo'] as bool,
      json['commentId'] as String,
      json['coverLarge'] as String,
      json['coverMiddle'] as String,
      json['coverSmall'] as String,
      json['nickname'] as String,
      json['playPathAacv164'] as String,
      json['playPathAacv224'] as String,
      json['playPathHq'] as String,
      json['playUrl32'] as String,
      json['playUrl64'] as String,
      json['smallLogo'] as String,
      json['title'] as String);
}

Map<String, dynamic> _$AlbumTrackItemToJson(AlbumTrackItem instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'categoryId': instance.categoryId,
      'comments': instance.comments,
      'createdAt': instance.createdAt,
      'duration': instance.duration,
      'likes': instance.likes,
      'opType': instance.opType,
      'orderNo': instance.orderNo,
      'playtimes': instance.playtimes,
      'processState': instance.processState,
      'relatedId': instance.relatedId,
      'sampleDuration': instance.sampleDuration,
      'shares': instance.shares,
      'status': instance.status,
      'trackId': instance.trackId,
      'trackRecordId': instance.trackRecordId,
      'type': instance.type,
      'uid': instance.uid,
      'userSource': instance.userSource,
      'isDraft': instance.isDraft,
      'isHoldCopyright': instance.isHoldCopyright,
      'isPaid': instance.isPaid,
      'isPublic': instance.isPublic,
      'isRichAudio': instance.isRichAudio,
      'isVideo': instance.isVideo,
      'commentId': instance.commentId,
      'coverLarge': instance.coverLarge,
      'coverMiddle': instance.coverMiddle,
      'coverSmall': instance.coverSmall,
      'nickname': instance.nickname,
      'playPathAacv164': instance.playPathAacv164,
      'playPathAacv224': instance.playPathAacv224,
      'playPathHq': instance.playPathHq,
      'playUrl32': instance.playUrl32,
      'playUrl64': instance.playUrl64,
      'smallLogo': instance.smallLogo,
      'title': instance.title
    };
