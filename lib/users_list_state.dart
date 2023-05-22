import 'package:flutter_architecture/user_json.dart';

class UsersListState {
  final List<UserJson> users;
  final bool isLoading;

  UsersListState({required this.users, required this.isLoading});

  factory UsersListState.empty() => UsersListState(users: [], isLoading: false);

  UsersListState copyWith({List<UserJson>? users, bool? isLoading}) =>  UsersListState(users: users ?? this.users, isLoading: isLoading ?? this.isLoading);
}