import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_bar_state.dart';

class AppBarCubit extends Cubit<double> {
  AppBarCubit() : super(0);
  void setOffset(double offset) => emit(offset);
}

// event --> bloc--> state
//bloc --> state //cubit is a simle version of bloc
