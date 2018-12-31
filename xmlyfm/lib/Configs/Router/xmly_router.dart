import 'package:fluro/fluro.dart';
import 'package:xmlyfm/Configs/Router/xmly_router_home.dart';

class XMLYRouterHandler {
  static final scheme = 'xmlyapp';
  static final router = Router();

  XMLYRouterHandler.init() {
    _register();
  }

  void _register() {
    // Home
    XMLYRouterHome.register(router);
  }

  static String fetchRoute(String path) {
    return XMLYRouterHandler.scheme + '://' + path;
  }
}