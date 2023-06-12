import 'package:disney_movies/disney_movie.dart';
import 'package:flutter/material.dart';

class DisneyMovieListItemView extends StatelessWidget {
  final DisneyMovie movie;

  const DisneyMovieListItemView({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              movie.imageUrl,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title),
                Text(
                  movie.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(movie.rating),
          Icon(
            Icons.star,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
