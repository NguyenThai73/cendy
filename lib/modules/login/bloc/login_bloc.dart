// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'login_state.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    // event handler was added
    on<LoginEvent>((event, emit) async {
      await loginUser(emit, event);
    });
  }

  loginUser(Emitter<LoginState> emit, LoginEvent event) async {
    emit(LoginLoading());
    try {
      if (event is CheckLoginEvent) {
       
      } else if (event is StartLoginEvent) {
      
      }
    } catch (e) {
      print("loi: $e");
      emit(LoginFailure(error:""));
    }
  }
}
