import 'package:flutter/material.dart';
import 'package:flutter_architecture/user_list_cubit.dart';
import 'package:flutter_architecture/user_list_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => UsersListCubit()..fetchUsers()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: UserListPage(),
    );
  }
}
