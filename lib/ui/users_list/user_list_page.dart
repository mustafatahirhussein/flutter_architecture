import 'package:flutter/material.dart';
import 'package:flutter_architecture/ui/users_list/user_list_cubit.dart';
import 'package:flutter_architecture/ui/users_list/users_list_initial_params.dart';
import 'package:flutter_architecture/ui/users_list/users_list_state.dart';
import 'package:flutter_architecture/ui/widgets/user_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key, required this.initialParams,}) : super(key: key);

  final UsersListInitialParams initialParams;
  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  late UsersListCubit cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = BlocProvider.of<UsersListCubit>(context);
    cubit.navigator.context = context;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          final userState = state as UsersListState;

          if(state.error != null) {
            return Center(
              child: Text(state.error!),
            );
          }

          return state.isLoading ? const Center(child: CircularProgressIndicator()) : ListView(
            shrinkWrap: true,
            children: userState.users.map((users) => UserCard(users: users, onTap: () => cubit.onTapUser(users))).toList(),
          );
        }
      ),
    );
  }
}

