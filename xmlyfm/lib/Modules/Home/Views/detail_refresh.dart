import 'package:flutter/material.dart';

class DetailRefresh extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
            height: 70.0,
            color: Colors.white,
            child: Center(
              child: Container(
                width: 90.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black54)
                  ],
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.refresh),
                    Container(width: 5.0,),
                    Text('换一批')
                  ],
                ),
              ),
            ),
          );
    }
}