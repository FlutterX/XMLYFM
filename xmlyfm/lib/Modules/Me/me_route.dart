import 'package:flutter/material.dart';
import 'Header/me_header.dart';
import 'Cell/me_cell.dart';

class MeRoute extends StatefulWidget {
  @override
  _MeRouteState createState() => _MeRouteState();
}

class _MeRouteState extends State<MeRoute> {
  ScrollController _scrollController;
  double elevation = 0.0; // 0 | 0.6
  // list
  final Map<String, MeCellConfig> listTitles1 = {
    "我的积分": null,
    "知识大使":
        MeCellConfig(type: MeCellType.Url, urlTitle: "分享赚钱"), //Text("分享赚钱"),
    "我的收听偏好": null,
  };
  final Map<String, MeCellConfig> listTitles2 = {
    "扫一扫": null,
    "知识大使": MeCellConfig(type: MeCellType.Switch),
  };
  final Map<String, MeCellConfig> listTitles3 = {
    "金融专区": MeCellConfig(type: MeCellType.Url, urlTitle: "各种权益免费领"),
    "运营商服务": null,
    "商城": null,
    "推荐喜马拉雅给好友": MeCellConfig(type: MeCellType.Url, urlTitle: "领20元优惠券"),
    "帮助与反馈": null,
  };

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      // 控制AppBar底部横线是否显示
      setState(() {
        elevation = _scrollController.offset <= 0 ? 0 : 0.6;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: elevation, // 底部阴影
        backgroundColor: Color(0xFFFAFAFA),
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
        controller: _scrollController,
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            sliver: SliverToBoxAdapter(
              child: Container(
                // decoration: BoxDecoration(color: Colors.yellow),
                child: MeHeader(),
              ),
            ),
          ),
          createSliverList(listTitles1),
          createLineBlock(),
          createSliverList(listTitles2),
          createLineBlock(),
          createSliverList(listTitles3),
        ],
      ),
    );
  }

  // 创建list
  Widget createSliverList(Map<String, MeCellConfig> datas) {
    return SliverFixedExtentList(
      itemExtent: 50.0, // 行高
      delegate: SliverChildBuilderDelegate((context, index) {
        return Container(
          // color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: MeCell(
                    title: datas.keys.toList()[index],
                    config: datas.values.toList()[index],
                  ),
                ),
              ],
            ),
          ),
        );
      }, childCount: datas.values.length),
    );
  }

  // 创建list的底部行块
  Widget createLineBlock() {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFF3F4F5)),
        child: Container(
          height: 8.0,
        ),
      ),
    );
  }
}
