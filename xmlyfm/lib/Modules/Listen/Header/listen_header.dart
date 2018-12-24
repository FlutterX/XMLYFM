import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Basic/vertical_button.dart';
import 'package:xmlyfm/Configs/configs.dart';

class ListenHeader extends StatelessWidget {
  final Map funcMap = {
    '下载' : Icon(Icons.file_download, color: themeColor,),
    '历史' : Icon(Icons.history, color: themeColor),
    '已购' : Icon(Icons.shopping_cart, color: themeColor),
    '听单' : Icon(Icons.receipt, color: themeColor),
  };

  @override
    Widget build(BuildContext context) {
      return DecoratedBox(
        decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFF8F8F8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5.0))
                ]),
        child: Row(
          children: funcMap.map((title, icon){
            return MapEntry(title, Expanded(child: VerticalButton(
              title: Text(title),
              icon: icon,
              space: 5.0,
              onPressed: (){
                print(title);
              },
            ),));
          }).values.toList(),
        ),
      );
    }
}