import 'package:flutter/material.dart';
import 'package:flutter_architecture/domain/entities/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.users,
    required this.onTap,
  }) : super(key: key);

  final User users;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(users.username),
            Text(users.email),
            Text(users.phone),
            Text(users.website),
            const SizedBox(
              height: 3,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
