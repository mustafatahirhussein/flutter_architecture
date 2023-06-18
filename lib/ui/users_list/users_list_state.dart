import 'package:flutter_architecture/domain/entities/user.dart';

class UsersListState {
  final List<User> users;
  final bool isLoading;
  final String? error;

  UsersListState({required this.users, required this.isLoading, this.error});

  factory UsersListState.empty() => UsersListState(users: [], isLoading: false);

  UsersListState copyWith({List<User>? users, bool? isLoading, String? error}) =>  UsersListState(users: users ?? this.users, isLoading: isLoading ?? this.isLoading, error: error ?? this.error);
}