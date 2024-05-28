import 'package:flutter/material.dart';
import 'package:nft_marketplace/common/utils/int_extensions.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 180,
        decoration: const ShapeDecoration(
          color: Color.fromRGBO(38, 42, 47, 1),
          shape: StadiumBorder(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            1.widthBox,
            const Text(
              'Filter',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(5),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: CircleBorder(),
              ),
              child: const Icon(Icons.filter_alt_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
