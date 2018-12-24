import 'package:json_annotation/json_annotation.dart';
import 'home_category_item.dart';

part 'home_category.g.dart';

@JsonSerializable()
class HomeCategory {
  HomeCategory(
    this.groupName, 
    this.itemList, 
    this.hideInModify, 
  );

  String groupName; // 推荐
  List<HomeCategoryItem> itemList; 
  bool hideInModify; // true


  factory HomeCategory.fromJson(Map<String, dynamic> json) => _$HomeCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$HomeCategoryToJson(this);
}