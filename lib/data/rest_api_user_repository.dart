import 'dart:convert';
import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/data/user_json.dart';
import 'package:flutter_architecture/domain/repositories/user_repository.dart';
import 'package:http/http.dart' as http;

class RestApiUserRepository implements UserRepository {

  @override
  Future<List<User>> getUsers() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(uri);

    var list = jsonDecode(response.body) as List;
    return list.map((e) => UserJson.fromMap(e).toDomain()).toList();
  }
}
