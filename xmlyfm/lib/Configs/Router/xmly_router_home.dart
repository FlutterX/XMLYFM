import 'package:fluro/fluro.dart';
import 'package:xmlyfm/Configs/Router/xmly_router.dart';
import 'package:xmlyfm/Modules/Home/DetailList/home_detail_list_route.dart';

class XMLYRouterHome {

  XMLYRouterHome.register(Router router) {
    router.define(XMLYRouterHandler.fetchRoute('home_detail_list'),
        handler: Handler(handlerFunc: (context, Map<String, dynamic> params) {
      return HomeDetailListRoute();
    }));
  }
}