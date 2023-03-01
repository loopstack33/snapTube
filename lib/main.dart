import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:youtube_downloader/env_config/routes.dart';
import 'package:youtube_downloader/shared/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: false,
      ignoreSsl: true
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kDarkBlueColor,
      ),
      initialRoute: "/home",
      getPages: AppRoutes.ROUTES,
    ),
  );
}
