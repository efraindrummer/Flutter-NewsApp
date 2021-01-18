import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noticiasapp/src/models/news_models.dart';
import 'package:http/http.dart' as http;
import 'package:noticiasapp/src/models/category_model.dart';

final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY   = 'a7e51182d1804b76a50fc2d3d129d123';

class NewsService with ChangeNotifier {

  List<Article> headlines = [];

  List<Category> categories = [
    Category(FontAwesomeIcons.building, 'busines'),
    Category(FontAwesomeIcons.tv, 'entertainment'),
    Category(FontAwesomeIcons.addressCard, 'general'),
    Category(FontAwesomeIcons.headSideVirus, 'healt'),
    Category(FontAwesomeIcons.vials, 'science'),
    Category(FontAwesomeIcons.volleyballBall, 'sports'),
    Category(FontAwesomeIcons.memory, 'technology')
  ];

  NewsService(){
    this.getTopHeadlines();
  }
  
  getTopHeadlines() async{
    final url = '$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=mx';
    final resp = await http.get(url);

    final newsResponse = newsResponseFromJson(resp.body);

    this.headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}