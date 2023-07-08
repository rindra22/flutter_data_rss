import 'package:webfeed/domain/rss_item.dart';

class Articles{
  String? _title;
  String? _description;
  DateTime? _pubDate;
  String? _imageUrl;
  String? _urlLink;

  Articles({required RssItem item}){
    _title = item.title;
    _description = item.description;
    _pubDate = item.pubDate;
    _imageUrl = item.enclosure?.url;
    _urlLink = item.link;
  }


  String get getTitle => _title ?? "";

  String get getDescription => _description ?? "";

  DateTime get getPubDate => _pubDate ?? DateTime.now();

  String get getImageUrl => _imageUrl ?? "";

  String get getUrlLink => _urlLink ?? "";


}