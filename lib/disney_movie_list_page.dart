import 'package:disney_movies/disney_movie_list_item_view.dart';
import 'package:disney_movies/movies.dart';
import 'package:flutter/material.dart';

class DisneyMovieListPage extends StatelessWidget {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disney movies"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
            final item = movies[index];
            return DisneyMovieListItemView(movie: item);
        },
        itemCount: movies.length,
      ),
    );
  }
  
}