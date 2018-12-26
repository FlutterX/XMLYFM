import 'package:json_annotation/json_annotation.dart';
import 'home_category_item.dart';

part 'home_recommend.g.dart';

@JsonSerializable()
class HomeRecommend {
  HomeRecommend(
    this.albumId, this.isFinished, this.lastUpdateAt, this.refundSupportType, this.isDraft, this.isPaid, this.albumLabel, this.cornerMark, this.coverMiddle, this.coverSmall, this.nickname, this.recReason, this.recSrc, this.recTrack, this.title
  );
  
  int albumId;
  int isFinished;
  int lastUpdateAt;
  int refundSupportType;
  bool isDraft;
  bool isPaid;
  String albumLabel;
  String cornerMark;
  String coverMiddle;
  String coverSmall;
  String nickname;
  String recReason;
  String recSrc;
  String recTrack;
  String title;


  factory HomeRecommend.fromJson(Map<String, dynamic> json) => _$HomeRecommendFromJson(json);
  Map<String, dynamic> toJson() => _$HomeRecommendToJson(this);
}