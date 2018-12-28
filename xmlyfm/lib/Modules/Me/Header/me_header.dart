import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Basic/vertical_button.dart';
import 'package:xmlyfm/Configs/configs.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class MeHeader extends StatefulWidget {
  @override
  _MeHeaderState createState() => _MeHeaderState();
}

class _MeHeaderState extends State<MeHeader> {
  final Map ownMap = {
    '已购': Icon(Icons.shopping_cart, size: fs>24.0,),
    '优惠券': Icon(Icons.account_balance, size: fs>24.0,),
    '喜点': Icon(Icons.confirmation_number, size: fs>24.0,),
    '喜钻': Icon(Icons.whatshot, size: fs>24.0,),
    '钱包': Icon(Icons.account_balance_wallet, size: fs>24.0,),
  };
  final Map funcMap = {
    '我要录音': Icon(Icons.keyboard_voice, size: fs>24.0,),
    '我要直播': Icon(Icons.ondemand_video, size: fs>24.0,),
    '我的作品': Icon(Icons.toll, size: fs>24.0,), // disc_full
    '主播工作台': Icon(Icons.personal_video, size: fs>24.0,),
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 用户信息
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 10.0),
                child: CircleAvatar(
                  child: Image.asset('images/me/host_default_avatar_88.png'),
                  radius: fs>30.0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('点击登录',style: TextStyle(fontSize: fs>16.0, fontWeight: FontWeight.bold),),
                    Container(height: fs>5.0,),
                    Text(
                      '登录后数据不丢失',
                      style: TextStyle(
                          color: Color(0xFFA0A0A0),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(fs>24.0), bottomLeft: Radius.circular(fs>24.0)),
                  color: Color(0xFFFFEBE7)
                ),
                child: Container(
                  height: fs>48.0,
                  width: fs>135.0,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.donut_small, size: fs>32.0, color: themeColor,),
                      ),
                      Expanded(child: Container(),),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                        Text('登录领取', style: TextStyle(color: Color(0xFF817C7C), fontSize: fs>14.0, fontWeight: FontWeight.bold),),
                        Text('积分会员', style: TextStyle(color: themeColor, fontSize: fs>14.0, fontWeight: FontWeight.bold),), // 
                      ],),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // VIP
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xFFF1BC7F), Color(0xFFFFD39E)],),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Container(
              height: 50.0,
              child: Row(
                children: <Widget>[
                  Container(width: 10.0,),
                  Icon(Icons.person, color: Color(0xFFAC6A2F)),
                  Container(width: 10.0,),
                  Expanded(
                    child: Text(
                      'VIP会员',
                      style:TextStyle(color: Color(0xFFB47238), fontSize: fs>15.0),),
                  ),
                  Text(
                    '精品臻选免费畅听',
                    style: TextStyle(color: Color(0xFFB47238), fontSize: fs>15.0),
                  ),
                  Icon(Icons.arrow_right, color: Color(0xFFAC6A2F), size: fs>24.0,),
                  Container(
                    width: fs>15.0,
                  )
                ],
              ),
            ),
          ),
        ),

        // 钱包
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFF3F3F3),
                      blurRadius: 15.0,
                      offset: Offset(0, 8.0))
                ]),
            child: Container(
              height: fs>80.0,
              child: Row(
                children: ownMap
                    .map((title, icon) {
                      return MapEntry(
                          title,
                          Expanded(
                            child: VerticalButton(
                              title: Text(title, maxLines: 1, style: TextStyle(color: Color(0xFFB5B5B5), fontSize: fs>12.0),),
                              space: fs>3.0,
                              icon: icon,
                              onPressed: () {},
                            ),
                          ));
                    })
                    .values
                    .toList(),
              ),
            ),
          ),
        ),
        // 功能
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFF3F3F3),
                      blurRadius: 15.0,
                      offset: Offset(0, 8.0))
                ]),
            child: Container(
              height: fs>80.0,
              child: Row(
                children: funcMap
                    .map((title, icon) {
                      return MapEntry(
                          title,
                          Expanded(
                            child: VerticalButton(
                              title: Text(
                                title, maxLines: 1,
                                style: TextStyle(color: Color(0xFFB5B5B5), fontSize: fs>12.0),),
                              space: fs>3.0,
                              icon: icon,
                              onPressed: () {},
                            ),
                          ));
                    })
                    .values
                    .toList(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
