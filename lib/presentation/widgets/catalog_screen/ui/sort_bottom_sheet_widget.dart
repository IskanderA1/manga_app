import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/domain/entitys/catalog/sort_model.dart';
import 'package:manga_app/presentation/widgets/general/mr_radio_button_widget.dart';

/// Шторка сортировки манги
void showSortBottomSheetWidget(
  BuildContext context,
  ValueNotifier<SortModel> sortController,
) {
  showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: kPurple200Color),
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: ValueListenableBuilder<SortModel>(
              valueListenable: sortController,
              builder: (context, value, _) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Сортировка', style: kHeader2TextStyle),
                      ...List.generate(
                        SortType.values.length,
                        (index) {
                          return MRRadioButtonWidget(
                            title: SortType.values[index].name,
                            onTap: () {
                              if (value.sortType != SortType.values[index]) {
                                sortController.value = value.copyWith(
                                  sortType: SortType.values[index],
                                );
                              }
                            },
                            isActive: value.sortType == SortType.values[index],
                          );
                        },
                      ),
                      const Divider(height: 1, color: kPurple500Color),
                      MRRadioButtonWidget(
                        title: 'По возрастанию',
                        onTap: () {
                          if (!value.ascending) {
                            sortController.value = value.copyWith(
                              ascending: true,
                            );
                          }
                        },
                        isActive: value.ascending,
                      ),
                      MRRadioButtonWidget(
                        title: 'По убыванию',
                        onTap: () {
                          if (value.ascending) {
                            sortController.value = value.copyWith(
                              ascending: false,
                            );
                          }
                        },
                        isActive: !value.ascending,
                      )
                    ],
                  ),
                );
              }),
        ),
      );
    },
  );
}
