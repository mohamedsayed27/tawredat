
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tawredat/data/repositories/auth_repository.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);

  void register({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async{
    emit(RegisterLoading());
    try{
      final response = await AuthRepository.register(name: name, email: email, phone: phone, password: password);
      print(response);
      emit(RegisterSuccess());
    }catch(error){
      print(error.toString());
      emit(RegisterError(error: error.toString()));
    }
  }

  void login({
    required String name,
    required String password,
  }) async{
    emit(RegisterLoading());
    try{
      final response = await AuthRepository.login(name: name, password: password);
      print(response);
      emit(RegisterSuccess());
    }catch(error){
      print(error.toString());
      emit(RegisterError(error: error.toString()));
    }
  }

}
