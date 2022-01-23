import 'package:flutter/material.dart';
import 'package:manga_app/const/extensions.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/filter_detail_item_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_button_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';

/// Экран детализации фильтров.
/// Отображает возможные для применения фильтры
class CatalogFilterDetailScreen extends StatefulWidget {
  final FilterType filterType;
  final List<FilterModel> currentFilters;
  final List<FilterModel> filters;

  const CatalogFilterDetailScreen({
    Key? key,
    required this.filters,
    required this.filterType,
    required this.currentFilters,
  }) : super(key: key);

  @override
  _CatalogFilterDetailScreenState createState() =>
      _CatalogFilterDetailScreenState();
}

class _CatalogFilterDetailScreenState extends State<CatalogFilterDetailScreen> {
  late final ValueNotifier<List<FilterModel>> filterController;
  late final List<FilterModel> initFilter;
  late final List<FilterModel> filters;

  @override
  void initState() {
    filters = widget.filters;
    initFilter = widget.currentFilters
        .where(
          (e) => e.type == widget.filterType,
        )
        .toList();
    filterController = ValueNotifier<List<FilterModel>>(initFilter);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    filterController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackgroundColor,
      body: BackgroundImageWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ValueListenableBuilder<List<FilterModel>>(
                valueListenable: filterController,
                builder: (context, value, _) {
                  return MRHeaderWidget(
                    title: widget.filterType.name,
                    centerTitle: true,
                    hasBackButton: true,
                    actions: [
                      TextButton(
                        onPressed: value.isNotEmpty
                            ? () => Navigator.pop(
                                  context,
                                  List<FilterModel>.empty(),
                                )
                            : null,
                        child: Text(
                          'Сбросить',
                          style: kHeader6TextStyle.copyWith(
                            color: kGrey400Color,
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
              ...List.generate(
                filters.length,
                (index) => FilterDetailItemWidget(
                  filter: filters[index],
                  filterController: filterController,
                ),
              )
            ],
          ),
        ),
        children: [
          Positioned(
            left: 80,
            right: 80,
            bottom: 30,
            child: ValueListenableBuilder<List<FilterModel>>(
              valueListenable: filterController,
              builder: (context, value, child) {
                if (!filterController.value.equals(initFilter)) {
                  return MRButtonWidget.smallButton(
                    title: 'Применить',
                    onPressed: () {
                      Navigator.pop(context, filterController.value);
                    },
                  );
                }
                return const SizedBox();
              },
            ),
          )
        ],
      ),
    );
  }
}
