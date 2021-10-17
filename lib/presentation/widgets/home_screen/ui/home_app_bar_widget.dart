import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

/// Виджет АппБара ХоумСкрина
class HomeAppBarWidget extends StatelessWidget {
  final String title;

  const HomeAppBarWidget({Key? key, required this.title}) : super(key: key);

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
        ],
      ),
    );
  }
}
