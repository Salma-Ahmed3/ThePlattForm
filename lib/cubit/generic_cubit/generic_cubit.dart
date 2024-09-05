import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/cubit/generic_cubit/generic_state.dart';

class GenericCubit<T> extends Cubit<GenericState<T>> {
  GenericCubit({T? data}) : super(GenericInitial<T>(data));

  update({required T data}) {
    emit(GenericUpdate<T>(change: !state.change, data: data));
  }

  reInitial({required T data}) {
    emit(GenericInitial<T>(data));
  }
}
