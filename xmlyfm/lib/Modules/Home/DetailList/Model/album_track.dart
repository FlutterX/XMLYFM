import 'package:json_annotation/json_annotation.dart';
import 'album_track_item.dart';

part 'album_track.g.dart';

@JsonSerializable()
class AlbumTrack {
  AlbumTrack(this.maxPageId, this.pageId, this.pageSize, this.totalCount, this.list);

  int maxPageId;
  int pageId;
  int pageSize;
  int totalCount;
  List<AlbumTrackItem> list;

  factory AlbumTrack.fromJson(Map<String, dynamic> json) => _$AlbumTrackFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumTrackToJson(this);
}