import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
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
            const MovieCardWidget(
                movieName: 'Black Panther',
                movieImage: 'assets/mov1.png',
                movieyear: '2023',
                movieimdb: '8.5',
                movieruntime: '2h 14m',
                moviegenre: 'SuperHero/Adventure'),
            const SizedBox(height: 5),
            const MovieCardWidget(
                movieName: 'Avatar 3',
                movieImage: 'assets/mov4.png',
                movieyear: '2023',
                movieimdb: '8.9',
                movieruntime: '3h 21m',
                moviegenre: 'SuperHero/Adventure'),
            const SizedBox(height: 5),
            const MovieCardWidget(
                movieName: 'Transformers 7',
                movieImage: 'assets/mov3.png',
                movieyear: '2023',
                movieimdb: '8.0',
                movieruntime: '3h 20m',
                moviegenre: 'SuperHero/Adventure'),
            const SizedBox(height: 5),
            const MovieCardWidget(
                movieName: 'Magic Girl 2',
                movieImage: 'assets/mov2.png',
                movieyear: '2023',
                movieimdb: '8.56',
                movieruntime: '2h 02m',
                moviegenre: 'SuperHero/Adventure'),
          ],
        ),
      ),
    );
  }
}
