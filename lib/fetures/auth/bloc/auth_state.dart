part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

///=================== PASSWORD TOGGLE LOGIC STATE=====================///

class PasswordVisibilytyState extends AuthState {
  final bool obsecure;

  const PasswordVisibilytyState({required this.obsecure});
  @override
  // TODO: implement props
  List<Object> get props => [obsecure];
}

///=================== PASSWORD TOGGLE LOGIC STATE=====================///
