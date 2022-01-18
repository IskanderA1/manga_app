import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        Navigator.pop(context);
      },
      elevation: 0,
      highlightElevation: 0,
      fillColor: kBlackColor.withOpacity(.5),
      child: const Icon(
        Icons.arrow_back_ios,
        size: 24.0,
        color: kWhiteColor,
      ),
      padding: const EdgeInsets.fromLTRB(18, 8, 8, 8),
      shape: const CircleBorder(),
    );
  }
}
