import 'package:flutter/material.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailTitleMore extends StatelessWidget {
  DetailTitleMore(this.title) : assert(title != null);
  final String title;

  @override
    Widget build(BuildContext context) {
      return Container(
            height: fs>50.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: fs>10.0),
              child: Row(
                children: <Widget>[
                  Expanded( child: Text(title, style: TextStyle(fontSize: fs>18.0, fontWeight: FontWeight.w900),)),
                  InkWell(
                    child: Text('更多', style: TextStyle(fontSize: fs>15.0),),
                  ),
                  Icon(Icons.arrow_right, size: fs>24.0,)
                ],
              ),
            ),
          );
    }
}