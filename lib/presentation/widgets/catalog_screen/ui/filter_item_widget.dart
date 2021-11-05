import 'package:flutter/material.dart';
import 'package:manga_app/domain/entitys/manga/filter_model.dart';
import 'package:manga_app/const/theme.dart';

class FilterItemWidget extends StatelessWidget {
  final FilterType filter;
  final VoidCallback onTap;
  final List<FilterModel> currentFilters;

  const FilterItemWidget({
    Key? key,
    required this.filter,
    required this.onTap,
    required this.currentFilters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filters = currentFilters.where((element) => element.type == filter);
    return InkWell(
      onTap: onTap,
      child: ListTile(
        horizontalTitleGap: 0,
        minLeadingWidth: 15,
        tileColor: kPurple500Color,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                filter.name,
                style: kTextFieldStyle,
              ),
            ),
            if (filters.isNotEmpty)
              Expanded(
                flex: 2,
                child: Text(
                  filters.map((e) => e.name).join(', '),
                  style: kBodyTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                ),
              ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
