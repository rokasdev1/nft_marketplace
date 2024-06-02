import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';
import 'package:nft_marketplace/presentation/pages/nft_details_page.dart';

class NftCard extends StatelessWidget {
  const NftCard({
    super.key,
    required this.label,
    required this.price,
    this.imageUrl,
  });
  final String label;
  final String price;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => NftDetailsPage(
        //       imageUrl: imageUrl ?? 'https://i.imgur.com/UkqXzPy.jpeg',
        //       name: label,
        //       currentPrice: price,

        //     ),
        //   ),
        // );
      },
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.network(
                  imageUrl ?? 'https://i.imgur.com/UkqXzPy.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 10,
              right: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    overflow: TextOverflow.visible,
                    softWrap: true,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      height: 1.2,
                      fontFamily: 'AtypBold',
                    ),
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      Container(
                        decoration: const ShapeDecoration(
                          color: Colors.transparent,
                          shape: StadiumBorder(),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 12,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                  5.widthBox,
                                  Text(
                                    '$price ETH',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  5.widthBox,
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Image.asset('assets/images/eth.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      10.widthBox,
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.shopping_cart_checkout),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
