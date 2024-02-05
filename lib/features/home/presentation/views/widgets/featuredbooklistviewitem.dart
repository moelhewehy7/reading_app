import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookListViewItem extends StatelessWidget {
  const FeaturedBookListViewItem({
    super.key,
    required this.width,
    required this.height,
    required this.imageurl,
  });

  final double width;
  final double height;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: ExtendedImage.network(
            imageurl,
            fit: BoxFit.fill,
            cache: true,
            loadStateChanged: (ExtendedImageState state) {
              switch (state.extendedImageLoadState) {
                case LoadState.completed:
                  return state.completedWidget;
                case LoadState.failed:
                  return const Icon(Icons.error);
                case LoadState.loading:
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
