import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';
import 'package:nft_marketplace/presentation/pages/home_page.dart';
import 'package:slidable_button/slidable_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/nftbg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: screenSize.width,
                  height: 50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.transparent],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter, // Change this line
                child: Container(
                  width: screenSize.width,
                  height: screenSize.height / 1.6,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.white],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Discover NFT\ncollections',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40, fontFamily: 'AtypBold', height: 1.1),
                ),
                SizedBox(
                  width: screenSize.width / 1.2,
                  child: Text(
                    'Explore the top collections of NFTs and buy/sell your NFTs as well.',
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
                HorizontalSlidableButton(
                  width: screenSize.width - 20,
                  height: 80,
                  buttonWidth: 200,
                  color: const Color(0xfff4b6a7),
                  buttonColor: const Color(0xfff4b6a7),
                  label: const Center(
                    child: Text(
                      'Start Experience',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.keyboard_double_arrow_right),
                      ),
                      5.widthBox,
                    ],
                  ),
                  onChanged: (value) {
                    if (value == SlidableButtonPosition.end) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
