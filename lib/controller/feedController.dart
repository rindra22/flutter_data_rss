import 'package:flutter/material.dart';
import 'package:rss_dtc/model/articles.dart';
import 'package:rss_dtc/model/feedParser.dart';

class FeedController extends StatelessWidget {
  const FeedController({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
        future: FeedParser().getFeeds(),
        builder: (context, snapshot) {
          final articles = snapshot.data ?? [];
          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: articles.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: Column(
                children: [
                  articles[index].getImageUrl.isNotEmpty
                      ? Image.network(articles[index].getImageUrl)
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      articles[index].getTitle,
                      style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),  

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      articles[index].getDescription,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Date de publication : " + articles[index].getPubDate.toString(),
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          );
        });
  }
}
