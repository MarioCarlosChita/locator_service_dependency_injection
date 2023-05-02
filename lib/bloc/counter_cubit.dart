

import '../cubit/cubit.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit():super(0);

  void add(){
    state ++;
    emit(state);
  }
}