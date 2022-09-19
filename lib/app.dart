import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_bill/app/routes/app_pages.dart';
import 'package:split_bill/app/theme/palettes.dart';
import 'package:split_bill/app/theme/typography.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Split Bill",
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          iconTheme:
              Theme.of(context).iconTheme.copyWith(size: TypoStyle.h3.fontSize),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(
                  bodyColor: Palette.text,
                  displayColor: Palette.text,
                ),
          )),
      getPages: AppPages.routes,
    );
  }
}
