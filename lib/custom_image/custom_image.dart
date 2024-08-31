import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final Color? color;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Alignment? alignment;
  final String? alt;
  final bool? isSvg;
  final Map<String, String>? headers;

  const CustomImage(
      {super.key,
      required this.image,
      this.color,
      this.height,
      this.width,
      this.fit,
      this.alignment,
      this.alt,
      this.headers,
      this.isSvg});

  @override
  Widget build(BuildContext context) {
    final isNetworkImage = image.contains('http');
    final isSvgImage = isSvg ?? image.contains('.svg');

    Widget imageWidget;
    if (isNetworkImage) {
      if (isSvgImage) {
        imageWidget = CachedNetworkImage(
          imageUrl: image,
          height: height,
          width: width,
          httpHeaders: headers,
          alignment: alignment ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
          // colorFilter:
          //     color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        );
      } else {
        imageWidget = CachedNetworkImage(
          imageUrl: image,
          height: height,
          width: width,
          httpHeaders: headers,
          alignment: alignment ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      }
    } else {
      if (isSvgImage) {
        imageWidget = SvgPicture.asset(
          image,
          height: height,
          width: width,
          alignment: alignment ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
          colorFilter:
              color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        );
      } else {
        imageWidget = Image.asset(
          image,
          height: height,
          width: width,
          alignment: alignment ?? Alignment.center,
          fit: fit ?? BoxFit.contain,
        );
      }
    }

    return imageWidget;
  }
}
