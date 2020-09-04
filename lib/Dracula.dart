// import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import './screens/plot_screen.dart';
import './screens/author.dart';
import './screens/characters_screen.dart';
import './screens/history_screen.dart';
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
        return 'Acting on behalf of his firm of solicitors, Jonathan Harker travels to the Carpathian Mountains to finalize the sale of England\'s Carfax Abbey to Transylvanian noble Count Dracula. Little does he realize that, in doing so, he endangers all that he loves. For Dracula is one of the Un-dead—a centuries-old vampire who sleeps by day and stalks by night, feasting on the blood of his helpless victims. Once on English soil, the count sets his sights on Jonathan\'s circle of associates, among them his beloved wife Mina. To thwart Dracula\'s evil designs, Jonathan and his friends will have to accept as truth the most preposterous superstitions concerning vampires, and in the company of legendary vampire hunter Abraham Van Helsing, embark on an unholy adventure for which even their worst nightmares have not prepared them.';
        break;
      case 'history':
        return 'Many myths surrounding vampires originated during the medieval period. The 12th-century British historians and chroniclers Walter Map and William of Newburgh recorded accounts of revenants, though records in English legends of vampiric beings after this date are scant. The Old Norse draugr is another medieval example of an undead creature with similarities to vampires. Vampiric beings were rarely written about in Jewish literature; the 16th-century rabbi David ben Solomon ibn Abi Zimra (Radbaz) wrote of an uncharitable old woman whose body was unguarded and unburied for three days after she died and rose as a vampiric entity, killing hundreds of people. He linked this event to the lack of a shmirah (guarding) after death as the corpse could be a vessel for evil spirits.Vampires properly originating in folklore were widely reported from Eastern Europe in the late 17th and 18th centuries. These tales formed the basis of the vampire legend that later entered Germany and England, where they were subsequently embellished and popularized. One of the earliest recordings of vampire activity came from the region of Istria in modern Croatia, in 1672. Local reports cited the local vampire Jure Grando of the village Kringa as the cause of panic among the villagers.[71] A former peasant, Jure died in 1656. Local villagers claimed he returned from the dead and began drinking blood from the people and sexually harassing his widow. The village leader ordered a stake to be driven through his heart, but when the method failed to kill him, he was subsequently beheaded with better results.';
        break;
      case 'author':
        return 'Abraham "Bram" Stoker (8 November 1847 – 20 April 1912) was an Irish author, best known today for his 1897 Gothic horror novel Dracula. During his lifetime, he was better known as the personal assistant of actor Sir Henry Irving and business manager of the Lyceum Theatre, which Irving owned.';
        break;
      default:
        return null;
    }
  }

  String get route {
    switch (title) {
      case 'plot':
        return PlotScreen.route;
        break;
      case 'characters':
        return CharactersScreen.route;
        break;
      case 'history':
        return HistoryScreen.route;
        break;
      case 'author':
        return AuthorScreen.route;
        break;
      default:
        return null;
    }
  }

  Item({
    @required this.title,
  });
}
