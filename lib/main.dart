import 'package:flutter/material.dart';

import 'package:get_storage/get_storage.dart';
import 'package:split_bill/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetStorage.init();
  runApp(App());
}
