import 'package:flutter/material.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';
import 'package:nft_marketplace/presentation/widgets/slide_button.dart';

class NftDetailsPage extends StatelessWidget {
  const NftDetailsPage({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.closingDate,
    required this.currentPrice,
  });
  final String name;
  final String imageUrl;
  final DateTime closingDate;
  final String currentPrice;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: screenSize.height / 2.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Colors.grey.shade900,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.only(top: 120),
                  width: screenSize.width - 50,
                  height: screenSize.height / 2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 10),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bored Ape #252',
                  style: TextStyle(fontFamily: 'AtypBold', fontSize: 36),
                ),
                20.heightBox,
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '0.35 ETH',
                            style: TextStyle(
                              fontSize: 42,
                              height: 1,
                              color: Colors.white,
                              fontFamily: 'AtypBold',
                            ),
                          ),
                          Text(
                            'Highest bid',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      20.widthBox,
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('assets/images/eth.png'),
                      ),
                    ],
                  ),
                ),
                16.heightBox,
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '8h : 43m : 09s',
                            style: TextStyle(
                              fontSize: 42,
                              height: 1,
                              color: Colors.white,
                              fontFamily: 'AtypBold',
                            ),
                          ),
                          Text(
                            'Time remaining',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      20.widthBox,
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.hourglass_top_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                20.heightBox,
                SlideButton(
                  width: screenSize.width - 20,
                  height: 80,
                  dx: 2,
                  color: const Color(0xff303841),
                  backgroundWidget: const Text(
                    'Buy NFT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  label: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 30,
                      ),
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.shopping_cart_checkout),
                    ),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    decoration: const ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0x4cffffff),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                  onMove: (details) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
