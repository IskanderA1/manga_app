import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

/// Мастер виджет текстового поля
class MRTextField extends StatefulWidget {
  final TextEditingController? controller;
  final bool autofocus;
  final TextInputType? keyboardType;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final IconData? icon;
  final String? hintText;
  final Function()? onDeleteTap;

  const MRTextField({
    Key? key,
    this.controller,
    this.autofocus = false,
    this.keyboardType,
    this.onSubmitted,
    this.icon,
    this.hintText,
    this.onChanged,
    this.onDeleteTap,
  }) : super(key: key);

  @override
  State<MRTextField> createState() => _MRTextFieldState();
}

class _MRTextFieldState extends State<MRTextField> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(width: 1, color: kBlackColor),
        color: kWhiteColor,
      ),
      child: TextField(
        cursorColor: kDarkGreyColor,
        autofocus: widget.autofocus,
        controller: controller,
        style: kTextFieldStyle.copyWith(color: kBlackColor),
        keyboardType: widget.keyboardType,
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          prefixIcon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: kDarkGreyColor,
                )
              : null,
          focusColor: kBlackColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: kTextFieldStyle.copyWith(color: kDarkGreyColor, height: 1),
          isCollapsed: true,
          suffixIcon: widget.onDeleteTap != null
              ? ValueListenableBuilder<TextEditingValue>(
                  builder: (context, value, Widget? child) {
                    if (value.text.isNotEmpty) {
                      return InkWell(
                        onTap: controller.clear,
                        child: child,
                      );
                    }
                    return const SizedBox();
                  },
                  child: InkWell(
                    onTap: widget.onDeleteTap,
                    child: const Icon(Icons.close, color: kDarkGreyColor),
                  ),
                  valueListenable: controller,
                )
              : null,
        ),
      ),
    );
  }
}
