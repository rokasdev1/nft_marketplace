import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nft_marketplace/common/controllers/opensea_controller.dart';
import 'package:nft_marketplace/presentation/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  OpenseaController openseaController = Get.put(OpenseaController());

  @override
  void initState() {
    super.initState();
    openseaController.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Atyp',
      ),
      home: const StartPage(),
    );
  }
}
