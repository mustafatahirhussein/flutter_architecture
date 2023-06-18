import 'package:flutter/material.dart';
import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:flutter_architecture/ui/user_details/user_details_cubit.dart';
import 'package:flutter_architecture/ui/user_details/user_details_initial_params.dart';
import 'package:flutter_architecture/ui/user_details/user_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key, required this.initialParams}) : super(key: key);
  final UserDetailsInitialParams initialParams;

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {

  late UserDetailCubit userCubit;
  @override
  void initState() {
    // TODO : fix this later
    userCubit = BlocProvider.of<UserDetailCubit>(context);
    userCubit.onInit(widget.initialParams);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder(
        bloc: userCubit,
        builder: (context, state) {
          state as UserDetailState;
          return Center(
            child: ListTile(
              title: Text(state.user.username),
              subtitle: Text(state.user.email),
            ),
          );
        }
      ),
    );
  }
}
