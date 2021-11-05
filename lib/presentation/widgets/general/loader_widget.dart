import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  final bool isLight;
  const LoadingWidget({
    Key? key,
    this.size = 70,
    this.isLight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitSpinningLines(
        size: size,
        color: isLight ? Colors.white : kPurple200Color,
      ),
    );
  }
}
