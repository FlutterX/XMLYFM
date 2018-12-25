import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail_list.dart';

class DetailSquare extends StatelessWidget {
  DetailSquare(this.models) : assert(models != null);

  final List<HomeDetailList> models;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(15.0),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // Grid按五列显示
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        delegate: new SliverChildBuilderDelegate((context, index) {
          // 创建子widget
          return new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(models[index].coverPath, width: 40.0),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  models[index].title,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0),
                ),
              )
            ],
          );
        }, childCount: models.length),
      ),
    );
  }
}
