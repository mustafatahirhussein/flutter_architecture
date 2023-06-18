import 'package:dartz/dartz.dart';
import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/domain/failures/users_list_failure.dart';

abstract class UserRepository {
  Future<Either<UsersListFailure, List<User>>> getUsers();
}