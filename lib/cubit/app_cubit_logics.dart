import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/welcome_page.dart';
import '../pages/detail_page.dart';
import '../pages/navigation_pages/main_page.dart';
import 'app_cubits.dart';
import 'app_cubit_states.dart';

class AppCubitsLogics extends StatefulWidget {
    AppCubitsLogics({Key? key}) : super(key: key);

    @override
    _AppCubitsLogicsState createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitsLogics> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: BlocBuilder<AppCubits, CubitStates>(
                builder: (context, state){
                    if(state is WelcomeState) {
                        return WelcomePage();
                    }
                    else if(state is LoadingState) {
                        return Center(
                            child: CircularProgressIndicator(),
                        );
                    }
                    else if(state is LoadedState) {
                        return MainPage();
                    }
                    else if(state is DetailState) {
                        return DetailPage();
                    }
                    else {
                        return Container();
                    }
                },
            ),
        );
    }
}