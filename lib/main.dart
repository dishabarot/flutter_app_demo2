import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Route/routes.dart';
import 'package:flutter_app_demo2/theme/theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/article_blocs/article_bloc.dart';
import 'data/repositories/api_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => ArticleBloc(repository: ArticleRepositoryImpl()),
      create: (context) => ArticleBloc(repository: ArticleRepositoryImpl()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Startup Name Generator',
        theme: MyTheme.myThemeData,
        darkTheme: MyTheme.myThemeData,
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.generateRoute,

      ),
    );
  }
}



