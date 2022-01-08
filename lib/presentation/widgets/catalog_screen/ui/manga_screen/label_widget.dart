import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

class LabelWidget extends StatelessWidget {
  final String title;
  final EdgeInsets? margin;
  final VoidCallback? onPressed;

  const LabelWidget({
    Key? key,
    required this.title,
    this.margin,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
        decoration: BoxDecoration(
          color: kPurple200Color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          title,
          style: kSubHeaderTextStyle,
        ),
      ),
    );
  }
}
