import 'package:flutter/material.dart';
import 'package:xmlyfm/Configs/xmly_api.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'Model/album.dart';
import 'Model/album_user.dart';
import 'Model/album_track.dart';

class HomeDetailListRoute extends StatefulWidget {
  @override
    _HomeDetailListRouteState createState() => _HomeDetailListRouteState();
}

class _HomeDetailListRouteState extends State<HomeDetailListRoute> {

  @override
    void initState() {
      super.initState();

      _fetchList();
    }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("萌宠"),
          backgroundColor: Colors.yellow,
        ),
        body: Text('HomeDetailListRoute'),
      );
    }

  void _fetchList() async {
    print('_fetchList');
    final dio = Dio();
    final response = await dio.get(home_detail_list, data: {
      "albumId" :	13395123,
      "device" : "android",
      "isAsc" : true,
      "isQueryInvitationBrand" : true,
      "pageId" : 1,
      "pageSize" : 20,
      "pre_page" : 0
    });
    final data = json.decode(response.data);
    final album = Album.fromJson(data['data']['album']);
    final albumUser = AlbumUser.fromJson(data['data']['user']);
    final albumTrack = AlbumTrack.fromJson(data['data']['tracks']);
  }
}