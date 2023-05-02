import 'dart:async';

abstract class Cubit<T> {
  T state;
  Cubit(this.state) {
    emit(state);
  }

  final StreamController<T> controller = StreamController.broadcast();

  void emit(T state) {
    controller.sink.add(state);
  }

  Stream<T> get stream => controller.stream;

  void close() => controller.close();
}
