import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/loader_widget.dart';

class MRButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final ShapeBorder shape;
  final bool isDisable;
  static const defaultBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  );

  const MRButtonWidget({
    Key? key,
    required this.onPressed,
    required this.child,
    this.shape = defaultBorder,
    this.isDisable = false,
  }) : super(key: key);

  factory MRButtonWidget.smallButton({
    required String title,
    required VoidCallback onPressed,
    bool isLoading = false,
    bool isDisable = false,
  }) {
    return MRButtonWidget(
      child: isLoading
          ? const LoadingWidget(
              isLight: true,
              size: 30,
            )
          : Text(
              title,
              style: kButtonTextStyle,
            ),
      onPressed: isLoading || isDisable ? null : onPressed,
      isDisable: isDisable,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: child,
      shape: shape,
      color: kPurple200Color,
      disabledTextColor: kWhiteColor,
      disabledColor: isDisable ? kDarkGreyColor : kPurple200Color,
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
    );
  }
}
