import 'package:flutter_architecture/domain/entities/user.dart';

class UsersListState {
  final List<User> users;
  final bool isLoading;

  UsersListState({required this.users, required this.isLoading});

  factory UsersListState.empty() => UsersListState(users: [], isLoading: false);

  UsersListState copyWith({List<User>? users, bool? isLoading}) =>  UsersListState(users: users ?? this.users, isLoading: isLoading ?? this.isLoading);
}