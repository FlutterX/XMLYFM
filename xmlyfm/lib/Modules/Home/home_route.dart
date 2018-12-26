import 'package:flutter/material.dart';
import 'package:xmlyfm/Configs/xmly_api.dart';
import 'package:dio/dio.dart';
import 'Model/home_category_item.dart';
import 'Views/home_search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'home_detail_route.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute>
    with SingleTickerProviderStateMixin {
  List<HomeCategoryItem> categoryModelList = [];
  TabController _tabController;
  int _tabBarBgAlpha = 255;
  bool _isTabBarOverAlpha = false;

  @override
  void initState() {
    super.initState();
    _fetchCategory();
  }

  @override
    void dispose() {
      _tabController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            left: .0,
            right: .0,
            // height: 100.0,
            child: Container(
              // color: Colors.red,
              color: Colors.white,
              height: 260.0 + kTextTabBarHeight,
            )),
        Positioned(
            left: .0,
            right: .0,
            height: kTextTabBarHeight + 200.0,
            child: Container(
              // color: Colors.blue,
              color: Color(0xFFB1A383).withAlpha(_tabBarBgAlpha),
            ),
        ),
        Positioned(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: kTextTabBarHeight),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Row(
                    children: _tabController == null
                        ? []
                        : <Widget>[
                            Expanded(
                              child: TabBar(
                                controller: _tabController,
                                isScrollable: true,
                                indicatorColor: _isTabBarOverAlpha ? Colors.black : Colors.white,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelStyle: TextStyle(
                                    color: _isTabBarOverAlpha ? Colors.black : Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                unselectedLabelStyle: TextStyle(
                                    color: _isTabBarOverAlpha ? Colors.black : Color(0xFFF9F9F9), fontSize: 13.0),
                                tabs: categoryModelList.map((model) {
                                  return Tab(
                                    text: model.title,
                                  );
                                }).toList(),
                              ),
                            ),
                            Center(
                                child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Icon(Icons.table_chart, color: Colors.white,),
                            )),
                          ],
                  ),
                ),
              ),
              HomeSearch(),
              _tabController == null
                  ? Container()
                  : Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: _createTabBarList(),
                      ),
                    ),
            ],
          ),
        )
      ],
    ));
  }

  // 获取分类
  void _fetchCategory() async {
    final Dio dio = Dio();
    final response = await dio.get(home_category, data: {
      'channel': 'and-gdt1-20',
      "device": "android",
      'version': '6.5.39'
    });
    // print(response.data.toString());
    List categoryList = response.data['customCategoryList'];
    List<HomeCategoryItem> models = [];
    for (var i = 0; i < categoryList.length; i++) {
      models.add(HomeCategoryItem.fromJson(categoryList[i]));
    }
    setState(() {
      categoryModelList = models;
      _tabController = TabController(length: models.length, vsync: this);
    });
  }

  List<Widget> _createTabBarList() {
    return categoryModelList.map((model) {
      switch (model.itemType) {
        case "h5":
          print(model.url);
          return Container(child: WebviewScaffold(
            url: 'www.qq.com', //model.url,
            withJavascript: true,
            appBar: AppBar(
              title: Text('WebView'),
            ),
          ),
          height: 100.0,);
        default: return HomeDetailRoute(categoryId: model.categoryId ?? -2, bgAlphaBolck: (alpha){
          // setState(() {
          //   _tabBarBgAlpha = alpha;
          //   _isTabBarOverAlpha = alpha < 50.0;
          // });
        },);
      }
    }).toList();
  }
}
