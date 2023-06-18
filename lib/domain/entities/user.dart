import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  const User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  const User.empty() : id = 000, name = '', email = '', username = '', phone = '', website = '';

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
  ];

}