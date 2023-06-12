import 'package:flutter/material.dart';

class DisneyMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Disney movies",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   icon: Icon(Icons.play_arrow),
      //   label: Text("Watch now"),
      //   backgroundColor: Colors.purple,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lilo and Stitch',
            style: TextStyle(fontSize: 30),

          ),
          Image.network(
            'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg',
          ),
          Text(
            "Some text",
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Container(
            color: Colors.purple,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.play_arrow),
                Text("Watch now"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
