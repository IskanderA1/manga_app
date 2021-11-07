import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/domain/entitys/catalog/filter_model.dart';
import 'package:manga_app/presentation/screens/catalog_screen/catalog_filter_detail_screen.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/filter_bloc/catalog_filter_bloc.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/ui/filter_item_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_button_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';
import 'package:manga_app/const/theme.dart';

/// Экран Фильтра. Отображает все досутупные для
/// применения типы фильтров
class CatalogFilterScreen extends StatefulWidget {
  final List<FilterModel> currentFilters;
  final Map<FilterType, List<FilterModel>> filters;

  const CatalogFilterScreen({
    Key? key,
    required this.currentFilters,
    required this.filters,
  }) : super(key: key);

  @override
  _CatalogFilterScreenState createState() => _CatalogFilterScreenState();
}

class _CatalogFilterScreenState extends State<CatalogFilterScreen> {
  late final CatalogFilterBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = locator.get<CatalogFilterBloc>(
      param1: widget.currentFilters,
      param2: widget.filters,
    );
  }

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogFilterBloc, CatalogFilterState>(
      bloc: bloc,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kDarkBackgroundColor,
          body: BackgroundImageWidget(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MRHeaderWidget(
                    title: 'Фильтры',
                    centerTitle: true,
                    hasBackButton: true,
                    actions: [
                      TextButton(
                        onPressed: state.currentFilters.isNotEmpty
                            ? () => bloc.add(const ClearFilterEvent())
                            : null,
                        child: Text(
                          'Сбросить',
                          style: kHeader4TextStyle.copyWith(
                            color: kGrey400Color,
                          ),
                        ),
                      )
                    ],
                  ),
                  ...List.generate(
                    bloc.filterTypes.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        top: index != 0 ? 8 : 16,
                      ),
                      child: FilterItemWidget(
                        filter: bloc.filterTypes[index],
                        currentFilters: state.currentFilters,
                        onTap: () async {
                          final type = bloc.filterTypes[index];
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return CatalogFilterDetailScreen(
                                filters: bloc.filters[type] ?? [],
                                filterType: type,
                                currentFilters: state.currentFilters,
                              );
                            }),
                          );
                          if (result != null && result is List<FilterModel>) {
                            bloc.add(UpdateFilterEvent(result, type));
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            children: [
              if (state.isLoading ||
                  state.isActiveApplyButton && state.count != null)
                Positioned(
                  left: 80,
                  right: 80,
                  bottom: 30,
                  child: MRButtonWidget.smallButton(
                    title: state.count == 0
                        ? 'Нет манг'
                        : 'Показать ${state.count} манг',
                    onPressed: () {
                      Navigator.pop(context, state.currentFilters);
                    },
                    isLoading: state.isLoading,
                    isDisable: state.count == 0,
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
