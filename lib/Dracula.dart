// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

enum MenuItem { characters, plot, history, author }

class Dracula {
  var data = [
    Item(
      title: 'characters',
    ),
    Item(
      title: 'plot',
    ),
    Item(
      title: 'history',
    ),
    Item(
      title: 'author',
    ),
  ];
}

class Item {
  String title;

  String get info {
    switch (title) {
      case 'characters':
        return 'The following is a list of the main characters from Bram Stoker\'s Dracula:';
        break;
      case 'plot':
        return 'The most famous figure of seductive evil...';
        break;
      case 'history':
        return 'Dracula is an 1897 Gothic horror novel by Irish author Bram Stoker. It introduced the character of Count Dracula and established many conventions of subsequent vampire fantasy...';
        break;
      case 'author':
        return 'Abraham "Bram" Stoker (8 November 1847 – 20 April 1912) was an Irish author, best known today for his 1897 Gothic horror novel Dracula.';
        break;
      default:
        return null;
    }
  }

  Item({
    @required this.title,
  });
}
