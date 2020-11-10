import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ClickEat extends StatefulWidget {
  static const id = 'clickeat';

  ClickEat({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ClickEatState createState() => _ClickEatState();
}

class _ClickEatState extends State<ClickEat> {
  final _key = UniqueKey();
  String _url = 'https://clickeat.ng/';

  Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        key: _key,
        initialUrl: _url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController _tmpWebController) {},
      ),
    );
  }
}
