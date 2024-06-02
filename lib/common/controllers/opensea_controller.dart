import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nft_marketplace/common/models/nft.dart';

class OpenseaController extends GetxController {
  RxBool isLoading = false.obs;
  OpenseaModel? openseaModel;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchListings();
  }

  Future<void> fetchListings() async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse(
          'https://api.opensea.io//api/v2/orders/ethereum/seaport/listings?limit=3',
        ),
        headers: {
          'accept': 'application/json',
          'x-api-key': 'e2f855ad59ea41c3afc9975aa4fc94ae',
        },
      );
      if (response.statusCode == 200) {
        ///data successfully

        final result = jsonDecode(response.body);
        openseaModel = OpenseaModel.fromJson(result as Map<String, dynamic>);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }

  Future<void> fetchNFTData() async {}
}
