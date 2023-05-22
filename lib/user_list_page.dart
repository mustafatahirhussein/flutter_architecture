import 'package:flutter/material.dart';
import 'package:flutter_architecture/user_list_cubit.dart';
import 'package:flutter_architecture/users_list_state.dart';
import 'package:flutter_architecture/widgets/user_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder(
        bloc: BlocProvider.of<UsersListCubit>(context),
        builder: (context, state) {
          final userState = state as UsersListState;

          return Center(
            child: state.isLoading ? const CircularProgressIndicator() : ListView(
              shrinkWrap: true,
              children: userState.users.map((users) => UserCard(users: users)).toList(),
            ),
          );
        }
      ),
    );
  }
}

