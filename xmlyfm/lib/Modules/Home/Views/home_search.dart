import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(100).withBlue(255),
                borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              height: 35.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 4.0),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  Expanded(child: Text('三字经', style: TextStyle(color: Colors.white, fontSize: 15.0),),)
                ],
              ),
            ),),
          Padding(padding: EdgeInsets.only(left: 10.0), child: Icon(Icons.history, color: Colors.white, size: 30.0,),),
          Padding(padding: EdgeInsets.only(left: 8.0), child: Icon(Icons.add, color: Colors.white, size: 30.0,),)
        ],
      ),
      );
    }
}