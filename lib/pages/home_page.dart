import 'package:flutter/material.dart';
import 'package:movie_catlog_mobileapp/src.dart';
import 'package:movie_catlog_mobileapp/widgets/search_box.widget.dart';

import '../widgets/movie_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 30),
            child: Text(
              "Movie Home",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Colors.white),
            ),
          ),
          const SearchBox(),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).highlightColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Action',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).highlightColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Advanture',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).highlightColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Horror',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).highlightColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Family',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).highlightColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Comedy',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          const Divider(),
          SizedBox(
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: moviesList.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieCardWidget(
                    movieName: moviesList[index]['title'],
                    movieImage: moviesList[index]['posterUrl'],
                    movieyear: moviesList[index]['year'],
                    movieimdb: moviesList[index]['imdb'],
                    movieruntime: moviesList[index]['runtime'],
                    moviegenre: moviesList[index]['genre']);
              },
            ),

            // ListView(
            //   shrinkWrap: true,
            //   physics: const AlwaysScrollableScrollPhysics(),
            //   scrollDirection: Axis.vertical,
            //   children: [
            //     MovieCardWidget(
            //         movieName: moviesList[0]['title'],
            //         movieImage: moviesList[0]['posterUrl'],
            //         movieyear: moviesList[0]['year'],
            //         movieimdb: moviesList[0]['imdb'],
            //         movieruntime: moviesList[0]['runtime'],
            //         moviegenre: moviesList[0]['genre']),

            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
