import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:indexed/indexed.dart';
import 'package:split_bill/app/components/Buttons/BaseButton.dart';
import 'package:split_bill/app/components/Input.dart';
import 'package:split_bill/app/components/Painter.dart';
import 'package:split_bill/app/theme/palettes.dart';
import 'package:split_bill/app/theme/theme_helpers.dart';

import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    debugPrint('refreshed');
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(spacing(2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Container(
                    height: 180.0,
                    width: 180.0,
                    child: Indexer(children: [
                      if (this.controller.svgRoot.value != null)
                        Indexed(
                          index: 1,
                          child: CustomPaint(
                            painter: Painter(this.controller.svgRoot.value!,
                                Size(180.0, 180.0)),
                            child: Container(),
                          ),
                        ),
                      Indexed(
                        index: 10,
                        child: Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(
                              spacing(3),
                            ),
                            onTap: () {
                              this.controller.changeProfile();
                            },
                            child: Container(
                              width: spacing(3),
                              height: spacing(3),
                              decoration: BoxDecoration(
                                color: Palette.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.replay,
                                  color: Palette.textContrast),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  )),
              SizedBox(
                height: spacing(2),
              ),
              Input(
                controller: this.controller.usernameController,
                placeholder: 'Enter Your Name',
              ),
              SizedBox(
                height: spacing(1),
              ),
              BaseButton(
                text: 'Continue',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
