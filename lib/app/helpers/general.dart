import 'package:uuid/uuid.dart';

var uuid = const Uuid();

String createId() => uuid.v4();
