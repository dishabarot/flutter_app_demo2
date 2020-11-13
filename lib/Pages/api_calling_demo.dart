import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/bloc/article_blocs/article_bloc.dart';
import 'package:flutter_app_demo2/bloc/article_blocs/article_event.dart';
import 'package:flutter_app_demo2/bloc/article_blocs/article_state.dart';
import 'package:flutter_app_demo2/data/models/api_respose_models.dart';
import 'package:flutter_app_demo2/data/repositories/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiCallingDemo extends StatefulWidget{
  _ApiCallingDemo createState() => _ApiCallingDemo();
}
class _ApiCallingDemo extends State<ApiCallingDemo>{
  ArticleBloc articleBloc;
  @override
  // TODO: implement context
  @override
  void initState() {
    super.initState();
    articleBloc = BlocProvider.of<ArticleBloc>(context);
    articleBloc.add(FetchArticleEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cricket"),
      ),
      body: Container(
        child: BlocListener<ArticleBloc, ArticleState>(
          bloc: articleBloc,
          listener: (context, state) {
            if (state is ArticleErrorState) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.ErrorMessage),
                ),
              );
            }
          },
          child: BlocBuilder<ArticleBloc, ArticleState>(
            bloc: articleBloc,
            builder: (context, state) {
              if (state is ArticleInitialState) {
                return buildLoading();
              } else if (state is ArticleLoadingState) {
                return buildLoading();
              } else if (state is ArticleLoadedState) {
                return buildArticleList(state.articles);
              } else if (state is ArticleErrorState) {
                return buildErrorUi(state.ErrorMessage);
              }
              else{
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildErrorUi(String message) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        message,
        style: TextStyle(color: Colors.red),
      ),
    ),
  );
}

class buildArticleList extends StatelessWidget{
  var counter=0;
  List<Articles> articles;
  buildArticleList(List<Articles> articles){
    this.articles = articles;
  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: articles.length+2,
      separatorBuilder: (BuildContext context, int index) => Divider( height: 3, color: Colors.grey),
      itemBuilder: (ctx, pos) {
        if(pos<=articles.length) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child:
              ListTile(
                leading: ClipOval(
                  child: Hero(
                    tag: articles[pos].urlToImage,
                    child: Image.network(
                      articles[pos].urlToImage,
                      fit: BoxFit.cover,
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                ),
                title: Text(articles[pos].title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,),
                subtitle: Text(articles[pos].publishedAt,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle,),
              ),
              onTap: () {

              },
            ),
          );
        }
        return RaisedButton(
            child: Text("Load More..."),
            color: Colors.greenAccent,
            splashColor: Colors.red,
            onPressed: () {
              setState() {
                for (int i = 0; i < 3; i++) {
                  if (counter < articles.length) {
                    articles.add(articles[counter]);
                    counter++;
                  }
                }
                print(
                    "Article: " + articles.length.toString() + " show Article : " +
                        articles.length.toString());
              }
            }
        );
      },
    );
  }

}

Widget buildArticleList1(List<Articles> articles, BuildContext context) {
  var counter=0;
  List<Articles> showArticles = <Articles>[];
    for (int i = 0; i < 2; i++) {
      if(counter <articles.length) {
        showArticles.add(articles[counter]);
        counter++;
        print("Article: "+articles.length.toString()+" show Article : "+showArticles.length.toString());
      }
  }
  return ListView.separated(
    itemCount: showArticles.length+2,
    separatorBuilder: (BuildContext context, int index) => Divider( height: 3, color: Colors.grey),
    itemBuilder: (ctx, pos) {
      if(pos<=showArticles.length) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child:
              ListTile(
                leading: ClipOval(
                  child: Hero(
                    tag: articles[pos].urlToImage,
                    child: Image.network(
                      articles[pos].urlToImage,
                      fit: BoxFit.cover,
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                ),
                title: Text(articles[pos].title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .title,),
                subtitle: Text(articles[pos].publishedAt,
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle,),
              ),
              onTap: () {

              },
            ),
          );
      }
      return RaisedButton(
        child: Text("Load More..."),
        color: Colors.greenAccent,
        splashColor: Colors.red,
        onPressed: () {
          setState() {
            for (int i = 0; i < 3; i++) {
              if (counter < articles.length) {
                showArticles.add(articles[counter]);
                counter++;
              }
            }
            print(
                "Article: " + articles.length.toString() + " show Article : " +
                    showArticles.length.toString());
          }
        }
      );
    },
  );
}


