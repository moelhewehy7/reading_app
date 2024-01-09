import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reading/core/utils/assets.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required bool automaticallyImplyLeading,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.bookSage,
            scale: 9,
          ),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
            ),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
    );
  }
}