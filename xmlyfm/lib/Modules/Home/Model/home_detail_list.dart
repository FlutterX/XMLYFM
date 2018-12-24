import 'package:json_annotation/json_annotation.dart';

part 'home_detail_list.g.dart';

@JsonSerializable()
class HomeDetailList {
  HomeDetailList(
    this.albumId, 
    this.albumTitle, 
    this.commentsCounts, 
    this.coverSmall,
    this.createdAt,
    this.duration,
    this.favoritesCounts,
    this.id,
    this.isAuthorized,
    this.isFree,
    this.isPaid,
    this.nickname,
    this.playPath32,
    this.playPath64,
    this.playPathAacv164,
    this.playPathAacv224,
    this.playsCounts,
    this.priceTypeId,
    this.sampleDuration,
    this.sharesCounts,
    this.tags,
    this.title,
    this.trackId,
    this.uid,
    this.updatedAt,
    this.userSource,
  );

  int albumId; // 9604235
  String albumTitle; // 半月谈晚报
  int commentsCounts; 
  String coverSmall;
  int createdAt;
  int duration;
  int favoritesCounts;
  int id;
  bool isAuthorized;
  bool isFree;
  bool isPaid;
  String nickname;
  String playPath32;
  String playPath64;
  String playPathAacv164;
  String playPathAacv224;
  int playsCounts;
  int priceTypeId;
  int sampleDuration;
  int sharesCounts;
  String tags;
  String title;
  int trackId;
  int uid;
  int updatedAt;
  int userSource;

  factory HomeDetailList.fromJson(Map<String, dynamic> json) => _$HomeDetailListFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDetailListToJson(this);
} 