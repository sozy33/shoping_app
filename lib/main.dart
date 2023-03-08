import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxpro/pages/details.dart';
import 'package:getxpro/pages/home.dart';
import 'package:getxpro/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Pro',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home_pages(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/details',
          page: () => ProductDetailsPage(
            product: null,
          ),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
      ],
    ),
  );
}
