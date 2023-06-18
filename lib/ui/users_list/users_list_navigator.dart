import 'package:flutter/material.dart';
import 'package:flutter_architecture/navigation/app_navigator.dart';
import 'package:flutter_architecture/ui/user_details/user_details_navigator.dart';
import 'package:flutter_architecture/ui/users_list/user_list_page.dart';
import 'package:flutter_architecture/ui/users_list/users_list_initial_params.dart';

class UsersListNavigator with UserDetailsRoute {
  UsersListNavigator(this.navigator);

  @override
  // TODO: implement context
  late BuildContext context;

  @override
  final AppNavigator navigator;

}

mixin UsersListRoute {
  openUsersList(UsersListInitialParams initialParams) {
    navigator.push(context, UserListPage(initialParams: initialParams));
  }

  BuildContext get context;
  AppNavigator get navigator;
}
