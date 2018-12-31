import 'package:json_annotation/json_annotation.dart';

part 'album_user.g.dart';

@JsonSerializable()
class AlbumUser {

  int albums;
  int anchorGrade;
  int followers;
  int followings;
  int liveRoomId;
  int liveStatus;
  int tracks;
  int uid;
  int verifyType;
  bool isVerified;
  String nickname;
  String personDescribe;
  String personalSignature;
  String smallLogo;

  AlbumUser(this.albums, this.anchorGrade, this.followers, this.followings, this.liveRoomId, this.liveStatus, this.tracks, this.uid, this.verifyType, this.isVerified, this.nickname, this.personDescribe, this.personalSignature, this.smallLogo);

  factory AlbumUser.fromJson(Map<String, dynamic> json) => _$AlbumUserFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumUserToJson(this);
}