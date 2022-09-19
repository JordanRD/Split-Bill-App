import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:multiavatar/multiavatar.dart';
import 'package:split_bill/app/helpers/general.dart';
import 'package:split_bill/app/helpers/svg_wrapper.dart';

class RegisterPageController extends GetxController {
  RxString svgCode = multiavatar(createId()).obs;
  TextEditingController usernameController = TextEditingController();
  Rx<DrawableRoot?> svgRoot = Rx<DrawableRoot?>(null);

  _generateSvg(String val) async {
    return SvgWrapper(val).generateLogo().then((value) {
      svgRoot.value = value;
      // this.update();
      svgRoot.refresh();
      debugPrint('kegenerate');
    });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _generateSvg(svgCode.value);
    super.onReady();
    ever(svgCode, (val) {
      debugPrint('fjfjeojeo');
      _generateSvg(val);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeProfile() {
    debugPrint('click');
    this.svgCode.value = multiavatar(createId());
  }

  // void increment() => count.value++;
}
