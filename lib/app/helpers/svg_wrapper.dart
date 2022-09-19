import 'package:flutter_svg/flutter_svg.dart';

class SvgWrapper {
  final String rawSvg;

  SvgWrapper(this.rawSvg);

  Future<DrawableRoot?> generateLogo() async {
    // assert(rawSvg);
    try {
      return await svg.fromSvgString(rawSvg, rawSvg);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
