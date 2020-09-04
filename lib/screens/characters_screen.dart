import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:zoomable_image/zoomable_image.dart';
import '../characterList.dart';
import '../models/character.model.dart';

class CharactersScreen extends StatelessWidget {
  static const route = 'characters';

  @override
  Widget build(BuildContext context) {
    var info = ModalRoute.of(context).settings.arguments;
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    // double screenWidth = MediaQuery.of(context).size.width;

    // print(info);
    return Scaffold(
      appBar: AppBar(
        title: Text('characters'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                info,
                textAlign: isPortrait?null:TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(0)),
            Column(
              children: characterList
                  .map((character) => Character(
                      description: character.description,
                      name: character.name,
                      image: character.image))
                  .toList(),
            )
            //  if(MediaQuery.of(context).orientation == Orientation.landscape) Container(
            //     child: Image.asset('images/draculacharacters.jpg'),
            //   ),
          ],
        ),
      ),
    );
  }
}
