import 'package:flutter/material.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({
    super.key,
    required this.movieName,
    required this.movieImage,
    required this.moviegenre,
    required this.movieyear,
    required this.movieimdb,
    required this.movieruntime,
  });

  final String movieName;
  final String movieImage;
  final String moviegenre;
  final String movieyear;
  final String movieimdb;
  final String movieruntime;

  @override
  Widget build(BuildContext context) {
    final double devHeight = MediaQuery.of(context).size.height;
    final double devWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: devWidth * 0.87,
              height: (devHeight * 0.2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(movieImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..scale(1.0, -1.0),
                          child: Opacity(
                            opacity: 0.6,
                            child: Container(
                              width: devWidth * 0.87 / 2,
                              height: (devHeight * 0.3) / 3,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          movieName,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        Text(
                          "Genre: $moviegenre",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        Text(
                          "Run Time: $movieruntime",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        Text(
                          "Year: $movieyear",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        Text(
                          "IMDB: $movieimdb",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
