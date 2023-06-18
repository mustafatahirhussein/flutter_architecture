import 'package:flutter/material.dart';
import 'package:flutter_architecture/domain/repositories/user_repository.dart';
import 'package:flutter_architecture/navigation/app_navigator.dart';
import 'package:flutter_architecture/ui/user_details/user_details_cubit.dart';
import 'package:flutter_architecture/ui/users_list/user_list_cubit.dart';
import 'package:flutter_architecture/ui/users_list/user_list_page.dart';
import 'package:flutter_architecture/data/rest_api_user_repository.dart';
import 'package:flutter_architecture/ui/users_list/users_list_initial_params.dart';
import 'package:flutter_architecture/ui/users_list/users_list_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<UserRepository>(RestApiUserRepository());
  getIt.registerSingleton<AppNavigator>(AppNavigator());
  getIt.registerSingleton<UsersListNavigator>(UsersListNavigator(getIt()));
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => UsersListCubit(getIt(), getIt())..fetchUsers()),
      BlocProvider(create: (context) => UserDetailCubit()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: UserListPage(initialParams: UsersListInitialParams(),),
    );
  }
}
