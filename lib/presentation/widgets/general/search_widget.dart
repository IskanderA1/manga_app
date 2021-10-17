import 'package:flutter/material.dart';
import 'package:manga_app/presentation/widgets/general/mr_text_field/mr_text_field.dart';

/// Виджет поиска по мангам
class SearchWidget extends StatelessWidget {
  final Function(String) onChanged;

  const SearchWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: MRTextField(
        onChanged: onChanged,
        hintText: 'Введи текст поиска',
        icon: Icons.search_sharp,
      ),
    );
  }
}
