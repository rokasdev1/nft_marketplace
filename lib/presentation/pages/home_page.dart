import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';
import 'package:nft_marketplace/presentation/widgets/filter_button.dart';
import 'package:nft_marketplace/presentation/widgets/nft_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16,
                runSpacing: 16,
                children: [
                  const NftCard(label: 'Bored Ape\n#1', price: 0.5),
                  FilterButton(
                    onTap: () {},
                  ),
                  const NftCard(label: 'Bored Ape\n#2', price: 0.5),
                  const NftCard(label: 'Bored Ape\n#2', price: 0.5),
                  const NftCard(label: 'Bored Ape\n#2', price: 0.5),
                  const NftCard(label: 'Bored Ape\n#2', price: 0.5),
                  const NftCard(label: 'Bored Ape\n#2', price: 0.5),
                  const NftCard(label: 'Bored Ape\n#2', price: 0.5),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
