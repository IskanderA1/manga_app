import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

/// Виджет радио кнопки
class MRRadioButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  const MRRadioButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        horizontalTitleGap: 0,
        minLeadingWidth: 15,
        tileColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                title,
                style: kTextFieldStyle,
              ),
            ),
          ],
        ),
        trailing: isActive
            ? const Icon(Icons.radio_button_checked)
            : const Icon(Icons.radio_button_unchecked),
      ),
    );
  }
}
