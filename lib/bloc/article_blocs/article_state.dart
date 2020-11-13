import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_demo2/data/models/api_respose_models.dart';

abstract class ArticleState extends Equatable{}

class ArticleInitialState extends ArticleState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadingState extends ArticleState{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ArticleLoadedState extends ArticleState{
  List<Articles> articles;
  ArticleLoadedState({@required this.articles});
  @override
  List<Object> get props => [articles];
}

class ArticleErrorState extends ArticleState{
  String ErrorMessage;
  ArticleErrorState({@required this.ErrorMessage});

  @override
  List<Object> get props => [ErrorMessage];
}