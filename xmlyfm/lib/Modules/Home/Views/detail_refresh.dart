import 'package:flutter/material.dart';
import 'package:xmlyfm/Configs/configs.dart';
import 'package:flutter_fitsize/flutter_fitsize.dart';

class DetailRefresh extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
            height: fs>70.0,
            child: Center(
              child: Container(
                width: fs>90.0,
                height: fs>30.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black54)
                  ],
                  borderRadius: BorderRadius.circular(fs>15.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.refresh, color: themeColor,),
                    Container(width: fs>5.0,),
                    Text('换一批', style: TextStyle(fontSize: fs>15.0, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          );
    }
}