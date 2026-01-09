import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const PasswordVisibilytyState(obsecure: true)) {
    on<TogglePasswordVisibiltyEvent>(_toggleVisibility);
  }

  void _toggleVisibility(
    TogglePasswordVisibiltyEvent event,
    Emitter<AuthState> emit,
  ) {
    final currentState = state;

    if (currentState is PasswordVisibilytyState) {
      emit(PasswordVisibilytyState(obsecure: !currentState.obsecure));
    }
  }
}
