import 'package:flutter/material.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class HomeSearch extends StatefulWidget {
  bool isTabBarOverAlpha;

  HomeSearch({Key key, @required this.isTabBarOverAlpha}) : super(key: key);
  @override
    _HomeSearchState createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: widget.isTabBarOverAlpha ? Colors.black.withAlpha(20) : Colors.white.withAlpha(100),//.withBlue(255),
                borderRadius: BorderRadius.all(Radius.circular(fs>20.0))
              ),
              height: fs>35.0,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 4.0),
                    child: Icon(Icons.search, color:  widget.isTabBarOverAlpha ? Colors.grey : Colors.white),
                  ),
                  Expanded(child: Text('三字经', style: TextStyle(color: widget.isTabBarOverAlpha ? Colors.grey : Colors.white, fontSize: fs>15.0),),)
                ],
              ),
            ),),
          Padding(padding: EdgeInsets.only(left: 10.0), child: Icon(Icons.history, color: widget.isTabBarOverAlpha ? Colors.black : Colors.white, size: fs>30.0,),),
          Padding(padding: EdgeInsets.only(left: 8.0), child: Icon(Icons.add, color: widget.isTabBarOverAlpha ? Colors.black : Colors.white, size: fs>30.0,),)
        ],
      ),
      );
    }
}