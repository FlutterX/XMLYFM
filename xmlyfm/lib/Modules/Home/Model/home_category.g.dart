// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeCategory _$HomeCategoryFromJson(Map<String, dynamic> json) {
  return HomeCategory(
      json['groupName'] as String,
      (json['itemList'] as List)
          ?.map((e) => e == null
              ? null
              : HomeCategoryItem.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['hideInModify'] as bool);
}

Map<String, dynamic> _$HomeCategoryToJson(HomeCategory instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'itemList': instance.itemList,
      'hideInModify': instance.hideInModify
    };
