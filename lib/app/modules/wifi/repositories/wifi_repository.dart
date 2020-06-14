import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class WifiRepository extends Disposable {
  final Dio client;

  WifiRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
