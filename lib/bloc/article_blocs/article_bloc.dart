import 'package:flutter/cupertino.dart';
import 'package:flutter_app_demo2/bloc/article_blocs/article_event.dart';
import 'package:flutter_app_demo2/bloc/article_blocs/article_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_app_demo2/data/models/api_respose_models.dart';
import 'package:flutter_app_demo2/data/repositories/api_repository.dart';

class ArticleBloc extends Bloc<ArticleEvent,ArticleState>{
  ArticleRepository repository;
  ArticleBloc({@required this.repository});

  @override
  // TODO: implement initialState
  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async*{
    // TODO: implement mapEventToState
    if(event is FetchArticleEvent)
    {
      yield ArticleLoadingState();
      try {
        List<Articles> articles=await repository.getArticles();
        yield ArticleLoadedState(articles : articles);
      } on Exception catch (e) {
        yield ArticleErrorState(ErrorMessage : e.toString());
      }
    }
  }

}