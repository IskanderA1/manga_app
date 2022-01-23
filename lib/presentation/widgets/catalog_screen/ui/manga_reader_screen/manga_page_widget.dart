import 'package:flutter/material.dart';

class MangaPageWidget extends StatelessWidget {
  final String imageUrl;

  const MangaPageWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Image.network(
      imageUrl,
      width: size.width,
      height: null,
      fit: BoxFit.fitWidth,
      frameBuilder: (_, child, __, ___) {
        return child;
      },
      errorBuilder: (_, __, ___) {
        return Image.asset(
          'assets/images/error_anime.jpeg',
          width: size.width,
          height: null,
          fit: BoxFit.fitWidth,
        );
      },
    );
  }
}
