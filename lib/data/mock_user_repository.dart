import 'package:dartz/dartz.dart';
import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/domain/failures/users_list_failure.dart';
import 'package:flutter_architecture/domain/repositories/user_repository.dart';

class MockDataUserRepository implements UserRepository {
  @override
  Future<Either<UsersListFailure, List<User>>> getUsers() async => right([
        User(
            id: 124,
            name: 'name',
            username: 'username',
            email: 'email',
            phone: 'phone',
            website: 'website')
      ]);
}
