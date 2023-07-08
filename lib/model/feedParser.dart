import 'package:rss_dtc/model/articles.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed/domain/rss_feed.dart';

class FeedParser{

  Future<List<Articles>> getFeeds() async {

    List<Articles> articles = [];
    String urlString = "https://www.francebleu.fr/rss/berry/rubrique/infos.xml";
    final client = http.Client();
    final url = Uri.parse(urlString);
    final clientResponse = await client.get(url);
    final rssFeed = RssFeed.parse(clientResponse.body);
    final items = rssFeed.items;
    
    articles = items != null ? items.map((item) => Articles(item: item)).toList() : [];

    return articles;

  }
  
}