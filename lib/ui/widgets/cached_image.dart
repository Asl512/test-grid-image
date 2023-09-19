import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_grid_images/ui/resurses/colors.dart';

class CachedImage extends StatelessWidget {
  final double radius;
  final double size;
  final String url;

  const CachedImage({
    Key? key,
    this.radius = 0,
    required this.url,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: size,
        height: size,
        fit: BoxFit.cover,
        placeholder: (_, __) => Container(
          padding: const EdgeInsets.all(70),
          color: AppColor.textColor,
          child: const CircularProgressIndicator(),
        ),
        errorWidget: (_, __, ___) {
          return Container(
            color: AppColor.textColor,
            child: const Icon(
              Icons.image_not_supported_outlined,
              color: AppColor.backgroundColor,
            ),
          );
        },
      ),
    );
  }
}
