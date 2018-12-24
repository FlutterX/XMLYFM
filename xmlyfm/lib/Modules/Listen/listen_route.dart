import 'package:flutter/material.dart';
import 'package:xmlyfm/Configs/configs.dart';
import 'package:xmlyfm/Modules/Listen/Header/listen_header.dart';

class ListenRoute extends StatefulWidget {
  @override
    _ListenRouteState createState() => _ListenRouteState();
}

class _ListenRouteState extends State<ListenRoute> {
  double elevation = 0.0; // 0 | 0.6

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: elevation,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('我听', style: TextStyle(color: Colors.black),),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: 
                InkWell(
                  onTap: () {
                    print('搜索');
                  },
                  child: Icon(Icons.save_alt, size: 30.0, color: Colors.black,),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: 
                InkWell(
                  onTap: () {
                    print('搜索');
                  },
                  child: Icon(Icons.history, size: 30.0, color: Colors.black,),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: 
                InkWell(
                  onTap: () {
                    print('搜索');
                  },
                  child: Icon(Icons.search, size: 30.0, color: Colors.black,),
                ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(height: 80, child: ListenHeader(),),
              ),
            ),
            // SliverToBoxAdapter(
            //   child: TabBarView(),
            // )
          ],
        ),
      );
    }
}