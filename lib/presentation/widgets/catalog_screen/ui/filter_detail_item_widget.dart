import 'package:flutter/material.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/const/theme.dart';

class FilterDetailItemWidget extends StatelessWidget {
  final FilterModel filter;
  final ValueNotifier<List<FilterModel>> filterController;

  const FilterDetailItemWidget({
    Key? key,
    required this.filter,
    required this.filterController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final tempFilters = [...filterController.value];
        if (tempFilters.contains(filter)) {
          tempFilters.remove(filter);
        } else {
          tempFilters.add(filter);
        }
        filterController.value = tempFilters;
      },
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
              child: Text(
                filter.name,
                style: kTextFieldStyle,
              ),
            ),
          ],
        ),
        trailing: ValueListenableBuilder<List<FilterModel>>(
          valueListenable: filterController,
          builder: (context, value, child) {
            if (value.contains(filter)) {
              return child!;
            }
            return const SizedBox();
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
