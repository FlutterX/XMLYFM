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
    this.contentUpdatedAt,
    this.enableShare,
    this.isExternalUrl,
    this.bubbleText,
    this.contentType,
    this.coverPath,
    this.displayClass,
    this.sharePic,
    this.subtitle,
    this.url,
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
    this.categoryId, 
    this.commentsCount, 
    this.contractStatus, 
    this.isFinished, 
    this.lastUptrackAt, 
    this.originalStatus, 
    this.playsCount, 
    this.priceTypeEnum, 
    this.refundSupportType, 
    this.tracksCount, 
    this.vipFreeType, 
    this.isDraft, 
    this.isFollowing, 
    this.isVipFree, 
    this.subscribeStatus, 
    this.infoType, 
    this.materialType,
    this.pic, 
    this.recSrc, 
    this.recTrack,
    this.discountedPrice, 
    this.price, 
    this.commentScore, 
    this.vipPrice, 
    this.displayDiscountedPrice, 
    this.displayPrice, 
    this.displayVipPrice, 
    this.priceUnit,
    this.columnType, 
    this.specialId,
    this.footnote,
    this.channelId, 
    this.onLineNum, 
    this.channelName, 
    this.coverRound,
    this.liveStatus, 
    this.liveType, 
    this.openType, 
    this.participationCount, 
    this.planLessonCount,
    this.nickName,
    this.actualStartAt, 
    this.chatId, 
    this.endAt, 
    this.playCount, 
    this.roomId, 
    this.startAt, 
    this.status, 
    this.categoryName, 
    this.coverLarge, 
    this.coverMiddle
  );

  // 通用
  int id;
  String title;

  int albumId; // 9604235
  String albumTitle; // 半月谈晚报
  int commentsCounts;
  String coverSmall;
  int createdAt;
  int duration;
  int favoritesCounts;
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
  int trackId;
  int uid;
  int updatedAt;
  int userSource;

  // Focus
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

  // Square
  int contentUpdatedAt;
  bool enableShare;
  bool isExternalUrl;
  String bubbleText;
  String contentType;
  String coverPath;
  String displayClass;
  String sharePic;
  String subtitle;
  String url;

  // guessYouLike
  int categoryId;
  int commentsCount;
  int contractStatus;
  int isFinished;
  int lastUptrackAt;
  int originalStatus;
  int playsCount;
  int priceTypeEnum;
  int refundSupportType;
  int tracksCount;
  int vipFreeType;
  bool isDraft;
  bool isFollowing;
  bool isVipFree;
  bool subscribeStatus;
  String infoType;
  String materialType;
  String pic;
  String recSrc;
  String recTrack;

  // paidCategory
  double discountedPrice;
  double price;
  double commentScore;
  double vipPrice;
  String displayDiscountedPrice;
  String displayPrice;
  String displayVipPrice;
  String priceUnit;

  // playlist
  int columnType;
  int specialId;
  String footnote;

  // oneKeyListen
  int channelId;
  int onLineNum;
  String channelName;
  String coverRound;

  // microLesson
  int liveStatus;
  int liveType;
  int openType;
  int participationCount;
  int planLessonCount;
  String nickName;

  // live
    int actualStartAt;
  int chatId;
  int endAt;
  int playCount;
  int roomId;
  int startAt;
  int status;
  String categoryName;
  String coverLarge;
  String coverMiddle;

  factory HomeDetailList.fromJson(Map<String, dynamic> json) =>
      _$HomeDetailListFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDetailListToJson(this);
}
