import 'package:flutter/material.dart';

class DetailTitleMore extends StatelessWidget {
  DetailTitleMore(this.title) : assert(title != null);
  final String title;

  @override
    Widget build(BuildContext context) {
      return Container(
            height: 50.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Expanded( child: Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),)),
                  InkWell(
                    child: Text('更多'),
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
          );
    }
}