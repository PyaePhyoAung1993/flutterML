import 'dart:convert';

import 'package:f02_pos/model/api/api-config.dart';
import 'package:f02_pos/model/dto/category.dart';
import 'package:http/http.dart' as http;

const API = "$BASE_API/categories";

class CategoryApi {
  Future<List<Category>> getAll() async {
    var value = await http.get(API);
    return categoryFromJson(value.body);
  }

  Future<Category> findById(int id) async {
    var value = await http.get("$API/$id");
    return Category.fromJson(json.decode(value.body));
  }

  Future<Category> create(Category c) async {
    var value = await http.post(API, body: c.toJson());
    return Category.fromJson(json.decode(value.body));
  }

  Future<Category> update(Category c) async {
    var value = await http.put(API, body: c.toJson());
    return Category.fromJson(json.decode(value.body));
  }
}
