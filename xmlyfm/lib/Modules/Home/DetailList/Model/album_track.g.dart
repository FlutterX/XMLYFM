// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumTrack _$AlbumTrackFromJson(Map<String, dynamic> json) {
  return AlbumTrack(
      json['maxPageId'] as int,
      json['pageId'] as int,
      json['pageSize'] as int,
      json['totalCount'] as int,
      (json['list'] as List)
          ?.map((e) => e == null
              ? null
              : AlbumTrackItem.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$AlbumTrackToJson(AlbumTrack instance) =>
    <String, dynamic>{
      'maxPageId': instance.maxPageId,
      'pageId': instance.pageId,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'list': instance.list
    };
