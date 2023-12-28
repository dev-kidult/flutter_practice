import 'package:flutter/material.dart';
import 'package:flutter_practice/screen/column_row_screen.dart';
import 'package:flutter_practice/screen/web_view.dart';

void main() {
  // web view 플러터 프레임워크가 실행할 준비가 될때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: WebViewScreen(),
  ));
}
