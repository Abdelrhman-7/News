import 'package:flutter/material.dart';
import 'package:news/core/colormanager.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:cached_network_image/cached_network_image.dart';

// ignore: must_be_immutable
class NewsItem extends StatelessWidget {
  NewsItem({super.key, required this.news});
  News news;

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: hieght * 0.01,
        horizontal: width * 0.04,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).splashColor, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: hieght * 0.03,
          horizontal: width * 0.03,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ?? '',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                      child: CircularProgressIndicator(
                        color: Colormanager.gray,
                      ),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(height: hieght * 0.02),
            Text(
              news.title ?? "",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: hieght * 0.02),
            Row(
              children: [
                Expanded(
                  child: Text(
                    news.author?.isNotEmpty == true
                        ? "By:${news.title ?? ""}"
                        : 'Unknown Author',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Text(
                  news.publishedAt?.isNotEmpty == true
                      ? news.publishedAt!
                      : 'No Date',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
