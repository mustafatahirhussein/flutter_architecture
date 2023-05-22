import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/domain/repositories/user_repository.dart';

class MockDataUserRepository implements UserRepository {
  @override
  Future<List<User>> getUsers() async => [
        User(
            id: 124,
            name: 'name',
            username: 'username',
            email: 'email',
            phone: 'phone',
            website: 'website')
      ];
}
