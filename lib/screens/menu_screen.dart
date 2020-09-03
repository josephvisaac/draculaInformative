import 'package:flutter/material.dart';
import '../Dracula.dart';
import './plot_screen.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Widget title(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        //  fontFamily: 'dracula'
      ),
    );
  }

  // Widget background = Image.network(
  //   'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F3b%2F20%2Fd1%2F3b20d158e71118b50be3c253c4619a78.jpg&f=1&nofb=1',
  //   fit: BoxFit.cover,
  // );

  @override
  Widget build(BuildContext context) {
    double fullScreenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F3b%2F20%2Fd1%2F3b20d158e71118b50be3c253c4619a78.jpg&f=1&nofb=1',
            ),
          ),
        ),
        // height: fullScreenHeight,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: orientation == Orientation.portrait ? 10 : 2,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Dracula',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: orientation == Orientation.landscape ? 5 : 30,
              child: Container(
                child: Column(
                  mainAxisAlignment: orientation == Orientation.landscape
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.spaceEvenly,
                  children: [
                    ...Dracula().data.map(
                      (eachOption) {
                        return Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black45,
                          child: InkWell(
                              splashColor: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.center,
                                  child: Text(
                                    eachOption.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                              )),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
