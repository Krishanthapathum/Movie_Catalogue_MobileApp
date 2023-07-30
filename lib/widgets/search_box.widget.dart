import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search Movie',
          labelStyle: TextStyle(color: Color.fromARGB(255, 179, 176, 176)),
          suffixIconColor: Colors.white,
          suffixIcon: Icon(Icons.search),
          fillColor: Color.fromRGBO(114, 110, 116, 1),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
