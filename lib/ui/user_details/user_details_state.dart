import 'package:flutter_architecture/domain/entities/user.dart';

class UserDetailState {
  final User user;

  UserDetailState({required this.user});

  factory UserDetailState.initial() => UserDetailState(user: User.empty());

  UserDetailState copyWith({User? user}) =>  UserDetailState(user: user ?? this.user);
}