import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/search_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/home_app_bar_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/promo_section_widget.dart';

/// Добашний экран отображает секции и виджет поиска по мангам
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackgroundColor,
      body: BackgroundImageWidget(
        child: Column(
          children: [
            const HomeAppBarWidget(title: 'Привет Akirah'),
            SearchWidget(
              onChanged: (search) {},
            ),
            PromoSectionWidget(),
          ],
        ),
      ),
    );
  }
}
