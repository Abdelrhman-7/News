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
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),

      Category(
        id: 'business',
        titel: 'Business',
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),
      Category(
        id: 'sports',
        titel: 'Sports',
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),
      Category(
        id: 'technology',
        titel: 'Technology',
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),
      Category(
        id: 'entertainment',
        titel: 'Entertainment',
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),

      Category(
        id: 'health',
        titel: 'Health',
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),
      Category(
        id: 'science',
        titel: 'Science',
        image: isDark ? ImageAssets.businessDark : ImageAssets.businessDark,
      ),
    ];
  }
}
