// import 'http';
import 'dart:convert';
import '../models/item_model.dart';
import 'package:http/http.dart' show Client;
class NewsApiProvider{
  final _root = 'https://hacker-news.firebaseio.com/v0';
  Client client = Client();


  fetchTopIds() async {
  final response = await  client.get(
      '$_root/topstories.json',
    );
  final ids = json.decode(response.body);
  return ids;
  }
  fetchItem(int id) async {
    final response = await client.get(
      '$_root/item/8863.json'
    );
    final parsedJson = json.decode(response.body);
    return ItemModel.fromJson(parsedJson);
  }
}