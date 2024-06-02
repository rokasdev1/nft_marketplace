import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:nft_marketplace/common/controllers/opensea_controller.dart';
import 'package:nft_marketplace/presentation/widgets/filter_button.dart';
import 'package:nft_marketplace/presentation/widgets/nft_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  OpenseaController openseaController = Get.put(OpenseaController());

  @override
  void initState() {
    super.initState();
    openseaController.onInit();
  }

  String ethPrice(String currentPrice) {
    final doublePrice = double.parse(currentPrice) / pow(10, 18);
    return doublePrice.toStringAsFixed(3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(
          'Listings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
        ),
      ),
      body: MasonryGridView.builder(
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: openseaController.openseaModel != null
            ? openseaController.openseaModel!.orders.length + 1
            : 0,
        itemBuilder: (context, index) {
          final i = index > 1 ? index - 1 : index;
          if (index == 1) {
            return FilterButton(
              onTap: () {},
            );
          }
          print(
            openseaController.openseaModel?.orders[i].makerAssetBundle.assets
                    .first.imageUrl ??
                'error',
          );
          return NftCard(
            imageUrl: openseaController
                .openseaModel?.orders[i].makerAssetBundle.assets.first.imageUrl,
            label: openseaController
                    .openseaModel?.orders[i].makerAssetBundle.assets.first.name
                    .toString() ??
                '',
            price: ethPrice(
              openseaController.openseaModel?.orders[i].currentPrice ?? '0',
            ),
          );
        },
      ),
    );
  }
}
