import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news/Api/apiManager.dart';
import 'package:news/Bottomsheet/bottomSheet.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/category.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.category});
  final Category category;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  List<News> _allArticles = [];
  List<News> _filteredArticles = [];
  late Future<NewsResponse> _futureNews;

  @override
  void initState() {
    super.initState();
    _futureNews = ApiManager.getNewsByCategory(widget.category.id);
  }

  void _filterArticles(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredArticles = _allArticles;
      } else {
        _filteredArticles = _allArticles
            .where(
              (a) =>
                  a.title != null &&
                  a.title!.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return FutureBuilder<NewsResponse>(
      future: _futureNews,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text("Something went wrong"));
        }

        _allArticles = snapshot.data?.articles ?? [];
        if (_filteredArticles.isEmpty) _filteredArticles = _allArticles;

        return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Search news...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context).splashColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.disabled_by_default,
                          color: Theme.of(context).splashColor,
                        ),
                      ),
                    ),
                    onChanged: _filterArticles,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _filteredArticles.length,
                    itemBuilder: (context, index) {
                      final news = _filteredArticles[index];
                      return Container(
                        margin: EdgeInsets.symmetric(
                          vertical: height * 0.01,
                          horizontal: width * 0.04,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).splashColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.02,
                            horizontal: width * 0.03,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: CachedNetworkImage(
                                  imageUrl: news.urlToImage ?? '',
                                  height: height * 0.25,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  progressIndicatorBuilder:
                                      (context, url, progress) => Center(
                                        child: CircularProgressIndicator(
                                          color: Colormanager.gray,
                                        ),
                                      ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                              SizedBox(height: height * 0.02),
                              InkWell(
                                onTap: () {
                                  Bottomsheet(news: news);
                                },
                                child: Text(
                                  news.title ?? "",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      (news.author != null &&
                                              news.author!.isNotEmpty)
                                          ? "By: ${news.author}"
                                          : "Unknown Author",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelMedium,
                                    ),
                                  ),
                                  Text(
                                    news.publishedAt?.isNotEmpty == true
                                        ? news.publishedAt!
                                        : 'No Date',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
