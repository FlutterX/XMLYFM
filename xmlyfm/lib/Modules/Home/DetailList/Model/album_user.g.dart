// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumUser _$AlbumUserFromJson(Map<String, dynamic> json) {
  return AlbumUser(
      json['albums'] as int,
      json['anchorGrade'] as int,
      json['followers'] as int,
      json['followings'] as int,
      json['liveRoomId'] as int,
      json['liveStatus'] as int,
      json['tracks'] as int,
      json['uid'] as int,
      json['verifyType'] as int,
      json['isVerified'] as bool,
      json['nickname'] as String,
      json['personDescribe'] as String,
      json['personalSignature'] as String,
      json['smallLogo'] as String);
}

Map<String, dynamic> _$AlbumUserToJson(AlbumUser instance) => <String, dynamic>{
      'albums': instance.albums,
      'anchorGrade': instance.anchorGrade,
      'followers': instance.followers,
      'followings': instance.followings,
      'liveRoomId': instance.liveRoomId,
      'liveStatus': instance.liveStatus,
      'tracks': instance.tracks,
      'uid': instance.uid,
      'verifyType': instance.verifyType,
      'isVerified': instance.isVerified,
      'nickname': instance.nickname,
      'personDescribe': instance.personDescribe,
      'personalSignature': instance.personalSignature,
      'smallLogo': instance.smallLogo
    };
