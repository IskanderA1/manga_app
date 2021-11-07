import 'package:flutter/material.dart';
import 'package:manga_app/data/core/locator_service.dart';
import 'package:manga_app/presentation/widgets/catalog_screen/manga_bloc/manga_detail_bloc.dart';

/// Экран детализации манги
class MangaDetailScreen extends StatefulWidget {
  final String titleName;

  const MangaDetailScreen({Key? key, required this.titleName})
      : super(key: key);

  @override
  _MangaDetailScreenState createState() => _MangaDetailScreenState();
}

class _MangaDetailScreenState extends State<MangaDetailScreen> {
  late final MangaDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = locator.get<MangaDetailBloc>(
      param1: widget.titleName,
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manga ${widget.titleName}'),
      ),
    );
  }
}
