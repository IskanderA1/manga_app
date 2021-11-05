import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

class MRIconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final bool? isActive;

  const MRIconButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: isActive != null && !isActive! ? null : onPressed,
          splashRadius: 25,
          padding: EdgeInsets.zero,
          iconSize: 18,
          icon: icon,
        ),
        if (isActive != null)
          Positioned(
            top: 7,
            right: 7,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: isActive! ? kPurple200Color : kGrey300Color,
                  borderRadius: BorderRadius.circular(50)),
            ),
          )
      ],
    );
  }
}
