import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit? get(context) => BlocProvider.of(context);

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldServicesKey = GlobalKey();

  bool isExpanded = false;

  void changeIsExpanded() {
    isExpanded = !isExpanded;
    emit(ChangeIsExpanded());
  }
}
