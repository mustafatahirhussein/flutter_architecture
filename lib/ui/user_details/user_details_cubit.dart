import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/ui/user_details/user_details_initial_params.dart';
import 'package:flutter_architecture/ui/user_details/user_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailCubit extends Cubit<UserDetailState> {
  UserDetailCubit() : super(UserDetailState.initial());

  void onInit(UserDetailsInitialParams initialParams) {
    emit(state.copyWith(user: initialParams.user));
  }

}