import 'package:basketball_rules/sub_category_model.dart';

class MainCategory {
  final int id;
  final String title;
  final String subtitle;
  final List<SubCategory> subCategories;

  MainCategory({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.subCategories,
  });
}

final mainCategories = [
  MainCategory(
    id: 1,
    title: 'Игровые Положения',
    subtitle: 'Всё, что нужно знать о ведении мяча и тд...',
    subCategories: gamePositionsSubcategories,
  ),
  MainCategory(
    id: 2,
    title: 'Нарушения',
    subtitle: 'Неизбежная часть игрового процесса',
    subCategories: violationsSubcategories,
  ),
  MainCategory(
    id: 3,
    title: 'Фолы',
    subtitle: 'Не делай так...',
    subCategories: foulsSubcategories,
  ),
  MainCategory(
    id: 4,
    title: 'Дополнительно',
    subtitle: 'То, что никогда не понадобится на улице',
    subCategories: additionalSubcategories
  ),
];
