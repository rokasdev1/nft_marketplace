import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';

class NftCard extends StatelessWidget {
  const NftCard({super.key, required this.label, required this.price});
  final String label;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Image.asset(
                'assets/images/nft.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      height: 1.2,
                      fontFamily: 'AtypBold'),
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
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white.withOpacity(0.5)),
                                  ),
                                  5.widthBox,
                                  Text(
                                    '$price ETH',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  5.widthBox,
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                    child: Image.asset('assets/images/eth.png'),
                                  ),
                                ],
                              ),
                            )),
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
    );
  }
}
