import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GiphyPage extends StatelessWidget {
  final Map _giphyData;

  GiphyPage(this._giphyData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _giphyData['title'],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(_giphyData['images']['fixed_height']['url']);
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_giphyData['images']['fixed_height']['url']),
      ),
    );
  }
}
