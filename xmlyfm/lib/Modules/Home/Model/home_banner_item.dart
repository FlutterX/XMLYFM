import 'package:json_annotation/json_annotation.dart';

part 'home_banner_item.g.dart';

@JsonSerializable()
class HomeBannerItem {
  HomeBannerItem(
    this.adId, 
    this.adType, 
    this.buttonShowed, 
    this.clickAction,
    this.clickType,
    this.cover,
    this.description,
    this.displayType,
    this.isAd,
    this.isInternal,
    this.isLandScape,
    this.isShareFlag,
    this.link,
    this.name,
    this.openlinkType,
    this.realLink,
    this.targetId,
  );

  int adId; // 182708
  int adType; // 0
  bool buttonShowed; 
  int clickAction;
  int clickType;
  String cover; // 封面
  String description;
  int displayType;
  bool isAd;
  int isInternal;
  bool isLandScape;
  bool isShareFlag;
  String link;
  String name;
  int openlinkType;
  String realLink;
  int targetId;

  factory HomeBannerItem.fromJson(Map<String, dynamic> json) => _$HomeBannerItemFromJson(json);
  Map<String, dynamic> toJson() => _$HomeBannerItemToJson(this);
} 