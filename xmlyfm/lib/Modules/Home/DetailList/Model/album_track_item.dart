import 'package:json_annotation/json_annotation.dart';

part 'album_track_item.g.dart';

@JsonSerializable()
class AlbumTrackItem {
  int albumId;
  int categoryId;
  int comments;
  int createdAt;
  int duration;
  int likes;
  int opType;
  int orderNo;
  int playtimes;
  int processState;
  int relatedId;
  int sampleDuration;
  int shares;
  int status;
  int trackId;
  int trackRecordId;
  int type;
  int uid;
  int userSource;
  bool isDraft;
  bool isHoldCopyright;
  bool isPaid;
  bool isPublic;
  bool isRichAudio;
  bool isVideo;
  String commentId;
  String coverLarge;
  String coverMiddle;
  String coverSmall;
  String nickname;
  String playPathAacv164;
  String playPathAacv224;
  String playPathHq;
  String playUrl32;
  String playUrl64;
  String smallLogo;
  String title;

  AlbumTrackItem(this.albumId, this.categoryId, this.comments, this.createdAt, this.duration, this.likes, this.opType, this.orderNo, this.playtimes, this.processState, this.relatedId, this.sampleDuration, this.shares, this.status, this.trackId, this.trackRecordId, this.type, this.uid, this.userSource, this.isDraft, this.isHoldCopyright, this.isPaid, this.isPublic, this.isRichAudio, this.isVideo, this.commentId, this.coverLarge, this.coverMiddle, this.coverSmall, this.nickname, this.playPathAacv164, this.playPathAacv224, this.playPathHq, this.playUrl32, this.playUrl64, this.smallLogo, this.title);

  factory AlbumTrackItem.fromJson(Map<String, dynamic> json) => _$AlbumTrackItemFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumTrackItemToJson(this);
}