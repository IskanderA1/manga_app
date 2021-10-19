import 'package:flutter/material.dart';
import 'package:manga_app/const/theme.dart';
import 'package:manga_app/presentation/widgets/general/search_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/background_image_widget.dart';
import 'package:manga_app/presentation/widgets/general/mr_header_widget.dart';
import 'package:manga_app/presentation/widgets/home_screen/ui/promo_section_widget.dart';

/// Домашний экран отображает секции и виджет поиска по мангам
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
        child: ListView(
          shrinkWrap: true,
          children: [
            const MRHeaderWidget(title: 'Привет Akirah'),
            SearchWidget(
              onChanged: (search) {},
            ),
            const PromoSectionWidget(
              title: 'В тренде',
            ),
            const PromoSectionWidget(
              title: 'Лето 🔥',
              subTitle: 'Хочешь лета и летнего настроения? Скорее читай!',
              color: kPurple200Color,
            ),
          ],
        ),
      ),
    );
  }
}
