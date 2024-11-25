import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinty_list_cubit/post/post_cubit.dart';
import 'package:flutter_infinty_list_cubit/post/view/post_list.dart';
import 'package:http/http.dart' as http;

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) {
          final postCubit = PostCubit(httpClient: http.Client());
          postCubit.fetchPosts();
          return postCubit;
        },
        child: const PostsList(),
      ),
    );
  }
}
