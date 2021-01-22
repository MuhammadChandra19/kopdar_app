import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protobuf/protobuf.dart' as $pb;

abstract class CoreServiceBloc<Event, State> extends Bloc<Event, State> {
  CoreServiceBloc(State initialState) : super(initialState);

  State _prevState;

  Stream<State> call<ResponseType extends $pb.GeneratedMessage>({
    @required Future<ResponseType> request,
    @required successState(ResponseType result, State prevState),
    State loadingState,
    State Function(dynamic error) alternativeDefaultErrorState,
  }) async* {
    _prevState = state;
    if (loadingState != null) yield loadingState;

    try {
      yield await request.then((value) {
        return successState(value, _prevState);
      });
    } catch (e, _) {
      yield alternativeDefaultErrorState(e);
    }
  }
}
