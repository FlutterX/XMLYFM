import 'package:flutter/material.dart';
import 'package:xmlyfm/Modules/Home/Model/home_detail_list.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

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
          mainAxisSpacing: fs>10.0,
          crossAxisSpacing: fs>10.0,
          childAspectRatio: 1.0,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          // 创建子widget
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(models[index].coverPath, width: fs>>40.0),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    models[index].title,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: fs>>11.0),
                  ),
                )
              ],
            );
        }, childCount: models.length),
      ),
    );
  }
}
