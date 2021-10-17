import 'package:flutter/material.dart';

/// Виджет с составным фоном из изображений
class BackgroundImageWidget extends StatelessWidget {
  final Widget child;

  const BackgroundImageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -250,
          left: -30,
          child: Image.asset('assets/images/back_img1.png'),
        ),
        Positioned(
          top: -300,
          left: -50,
          child: Image.asset('assets/images/back_img2.png'),
        ),
        Positioned(
          top: -330,
          left: -50,
          child: Image.asset('assets/images/back_img3.png'),
        ),
        Positioned.fill(child: child),
      ],
    );
  }
}
