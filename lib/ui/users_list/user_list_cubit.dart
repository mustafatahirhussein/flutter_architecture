import 'package:flutter_architecture/domain/repositories/user_repository.dart';
import 'package:flutter_architecture/ui/users_list/users_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersListCubit extends Cubit<UsersListState> {
  UsersListCubit(this.userRepository) : super(UsersListState.empty());

  final UserRepository userRepository;

  Future<void> fetchUsers() async {
    emit(state.copyWith(isLoading: true));
    var users = await userRepository.getUsers();
    emit(state.copyWith(users: users, isLoading: false));
  }
}