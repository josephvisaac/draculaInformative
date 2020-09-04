import 'package:flutter/material.dart';

class Character extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  Character({
    @required this.name,
    @required this.description,
    @required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Column(
            children: [
              // Container(
              //   child: image,
              // )
              image != null
                  ? Padding(
                    padding: const EdgeInsets.only(bottom:8.0, top: 5),
                    child: Container(
                     
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(image),
                          ),
                          //  borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                  )
                  : Container(),
              Container(
                  child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'medieval',
                  fontSize: 30,
                ),
              )),
              Container(
                child: Text(
                  description,
                  style: TextStyle(
                    fontFamily: 'Romanesco',
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
