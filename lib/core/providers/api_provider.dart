import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_api/core/models/user_model.dart';
import 'package:http/http.dart' as http;

final fetchUserProvider = FutureProvider.family.autoDispose<UserModel, int>(
  (ref, userId) async {
    ref.keepAlive();
    String url = 'https://jsonplaceholder.typicode.com/users/$userId';
    var response = await http.get(Uri.parse(url));

    var value = json.decode(response.body) as Map<String, dynamic>;

    return UserModel.fromJson(value);
  },
);

final fetchAllPost = FutureProvider.autoDispose<List<dynamic>>(
  (ref) async {
    String url = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(Uri.parse(url));

    var value = json.decode(response.body);

    return value;
  },
);

final fetchPostComments = FutureProvider.autoDispose.family<List<dynamic>, int>(
  (ref, postId) async {
    String url = 'https://jsonplaceholder.typicode.com/posts/$postId/comments';
    var response = await http.get(Uri.parse(url));

    var value = json.decode(response.body);

    return value;
  },
);
