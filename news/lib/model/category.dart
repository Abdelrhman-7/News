import 'package:news/core/assetsmanager.dart';

class Category {
  String id;
  String titel;
  String image;
  Category({required this.id, required this.image, required this.titel});

  static List<Category> getcategoryList(bool isDark) {
    return [
      Category(
        id: 'general',
        titel: 'General',
        image: isDark ? ImageAssets.generalDark : ImageAssets.generalLight,
      ),

      Category(
        id: 'business',
        titel: 'Business',
        image: isDark ? ImageAssets.buisnesslDark : ImageAssets.buisnessLight,
      ),
      Category(
        id: 'sports',
        titel: 'Sports',
        image: isDark ? ImageAssets.sportDark : ImageAssets.sportLight,
      ),
      Category(
        id: 'technology',
        titel: 'Technology',
        image: isDark ? ImageAssets.sportDark : ImageAssets.sportLight,
      ),
      Category(
        id: 'entertainment',
        titel: 'Entertainment',
        image: isDark ? ImageAssets.sportDark : ImageAssets.sportLight,
      ),

      Category(
        id: 'health',
        titel: 'Health',
        image: isDark ? ImageAssets.sportDark : ImageAssets.sportLight,
      ),
      Category(
        id: 'science',
        titel: 'Science',
        image: isDark ? ImageAssets.sportDark : ImageAssets.sportLight,
      ),
    ];
  }
}
