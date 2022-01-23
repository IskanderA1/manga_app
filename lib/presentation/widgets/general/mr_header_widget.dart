import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

/// Виджет шапки скрина
class MRHeaderWidget extends StatelessWidget {
  final String title;
  final bool centerTitle;
  final bool hasBackButton;
  final List<Widget>? actions;

  const MRHeaderWidget({
    Key? key,
    required this.title,
    this.centerTitle = false,
    this.hasBackButton = false,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
      child: AppBar(
        elevation: 0,
        centerTitle: centerTitle,
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        leading: hasBackButton
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                splashRadius: 25,
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              )
            : null,
        title: Text(
          title,
          style: kHeader1TextStyle,
        ),
        actions: actions,
      ),
    );
  }
}
