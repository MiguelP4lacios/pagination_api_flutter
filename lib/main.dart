import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pagination_exemple/blocs/posts/posts_cubit.dart';
import 'package:pagination_exemple/presentation/pots_screen.dart';

import 'data/repositories/posts_repository.dart';
import 'data/services/posts_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final PostsRepository repository = PostsRepository(PostsService());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PostsCubit(repository),
        child: PostsView(),
      ),
    );
  }
}