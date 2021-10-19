import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:manga_app/const/theme.dart';

/// Виджет шапки скрина
class MRHeaderWidget extends StatelessWidget {
  final String title;
  final bool hasFilter;
  final bool hasSort;

  const MRHeaderWidget({
    Key? key,
    required this.title,
    this.hasFilter = false,
    this.hasSort = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 70, 16, 16),
      child: Row(
        children: [
          Text(
            title,
            style: kHeader1TextStyle,
          ),
          const Spacer(),
          if (hasSort)
            IconButton(
              onPressed: () {},
              splashRadius: 25,
              iconSize: 18,
              padding: EdgeInsets.zero,
              icon: const Icon(
                FontAwesome5.sort_amount_down,
                size: 20,
              ),
            ),
          if (hasFilter)
            IconButton(
              onPressed: () {},
              splashRadius: 25,
              padding: EdgeInsets.zero,
              iconSize: 18,
              icon: const Icon(
                FontAwesome5.filter,
              ),
            )
        ],
      ),
    );
  }
}
