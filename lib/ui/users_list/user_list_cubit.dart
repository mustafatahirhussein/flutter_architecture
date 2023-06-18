import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/domain/repositories/user_repository.dart';
import 'package:flutter_architecture/ui/user_details/user_details_initial_params.dart';
import 'package:flutter_architecture/ui/users_list/users_list_navigator.dart';
import 'package:flutter_architecture/ui/users_list/users_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersListCubit extends Cubit<UsersListState> {
  UsersListCubit(this.userRepository, this.navigator) : super(UsersListState.initial());

  final UserRepository userRepository;
  final UsersListNavigator navigator;

  Future<void> fetchUsers() async {
    emit(state.copyWith(isLoading: true, error: null));
    var users = await userRepository.getUsers();
    users.fold((error) => emit(state.copyWith(error: error.error)), (user) => emit(state.copyWith(users: user, isLoading: false)));
  }

  onTapUser(User user) {
    navigator.openUserDetails(UserDetailsInitialParams(user: user));
  }
}