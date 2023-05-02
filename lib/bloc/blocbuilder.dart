import 'dart:async';

import 'package:bloc_projecto/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';

typedef BuilderType<S> = Widget Function(BuildContext context, S state,StreamSubscription listen);

class BlocBuilder<B extends Cubit<S>, S> extends StatelessWidget {
  final BuilderType<S> builder;
  final B bloc;
   // BuilderListen listen;

  BlocBuilder({
    required this.builder,
    required this.bloc,
    // required this.listen
  });

  @override
  Widget build(BuildContext context) {
    // listen = bloc.stream.listen((event) {});
    return StreamBuilder<S>(
      initialData: bloc.state,
      stream: bloc.stream,
      builder: (context, snapshot) {
        return this.builder(context, snapshot.data ?? bloc.state ,bloc.stream.listen((event) { }));
      },
    );
  }
}
