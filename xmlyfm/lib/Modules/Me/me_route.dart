import 'package:flutter/material.dart';

class MeRoute extends StatefulWidget {
  @override
  _MeRouteState createState() => _MeRouteState();
}

class _MeRouteState extends State<MeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // 去除底部阴影
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print('邮箱');
                  },
                  child: Image.asset(
                    'images/me/host_theme_ic_title_bar_message.png',
                    width: 30.0,
                  ),
                ),
                Container(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () {
                    print('邮箱');
                  },
                  child: Image.asset(
                    'images/me/host_theme_ic_title_bar_setting.png',
                    width: 25.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                // decoration: BoxDecoration(color: Colors.yellow),
                child: Column(
                  children: <Widget>[
                    // 用户信息
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                              child: Image.asset(
                                'images/me/host_default_avatar_88.png',
                              ),
                              radius: 30.0),
                          Container(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '点击登录',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 5.0,
                                ),
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
                        ],
                      ),
                    ),
                    // VIP
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFF1BC7F), Color(0xFFFFD39E)],
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Container(
                          height: 50.0,
                        ),
                      ),
                    ),

                    // 钱包
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                          boxShadow: [BoxShadow(color: Color(0xFFF3F3F3), blurRadius: 15.0, offset: Offset(0, 8.0))]
                        ),
                        child: Container(
                          height: 100.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Icon(Icons.arrow_upward),),
                              Expanded(child: Icon(Icons.arrow_back),),
                              Expanded(child: Icon(Icons.arrow_downward),),
                              Expanded(child: Icon(Icons.arrow_forward),),                              
                            ],
                          ),
                        ),
                      ),
                    ),
                    // 功能
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0),
                          boxShadow: [BoxShadow(color: Color(0xFFF3F3F3), blurRadius: 15.0, offset: Offset(0, 8.0))]
                        ),
                        child: Container(
                          height: 100.0,
                          child: Row(
                            children: <Widget>[
                              Expanded(child: Icon(Icons.arrow_upward),),
                              Expanded(child: Icon(Icons.arrow_back),),
                              Expanded(child: Icon(Icons.arrow_downward),),
                              Expanded(child: Icon(Icons.arrow_forward),),                              
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.redAccent,
                child: Text("$index"),
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}
