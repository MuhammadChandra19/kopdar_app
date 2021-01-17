import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CoreServiceBloc<Event, State> extends Bloc<Event, State> {
  CoreServiceBloc(State initialState) : super(initialState);
}
