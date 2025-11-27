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
        image: isDark ? ImageAssets.globle2 : ImageAssets.globle2,
      ),

      Category(
        id: 'business',
        titel: 'Business',
        image: isDark ? ImageAssets.business : ImageAssets.business,
      ),
      Category(
        id: 'sports',
        titel: 'Sports',
        image: isDark ? ImageAssets.sport : ImageAssets.sport,
      ),
      Category(
        id: 'technology',
        titel: 'Technology',
        image: isDark ? ImageAssets.electronic : ImageAssets.electronic,
      ),
      Category(
        id: 'entertainment',
        titel: 'Entertainment',
        image: isDark ? ImageAssets.popcorn : ImageAssets.popcorn,
      ),

      Category(
        id: 'health',
        titel: 'Health',
        image: isDark ? ImageAssets.medical : ImageAssets.medical,
      ),
      Category(
        id: 'science',
        titel: 'Science',
        image: isDark ? ImageAssets.lab : ImageAssets.lab,
      ),
    ];
  }
}
