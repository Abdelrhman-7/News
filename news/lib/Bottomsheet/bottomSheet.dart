import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/RoutManager/RoutManager.dart';
import 'package:news/model/NewsResponse.dart';

// ignore: must_be_immutable
class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key, required this.news});
  final News news;

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: hieght * 0.02),

              CachedNetworkImage(
                imageUrl: news.urlToImage ?? "",
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                ),
              ),
              SizedBox(height: hieght * 0.02),
              Text(
                news.content ?? "No source",
                style: TextStyle(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: hieght * 0.02),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routmanager.newsdetails,
                    arguments: news,
                  );
                },
                child: Container(
                  height: hieght * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "View Full Articel",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
