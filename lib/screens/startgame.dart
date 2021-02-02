import 'package:SuperMario/worlds/world.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarGameScreen extends StatefulWidget {
  @override
  _StarGameScreenState createState() => _StarGameScreenState();
}

class _StarGameScreenState extends State<StarGameScreen> {
  var gameFont = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white, fontSize: 20),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.gif"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: 1000,
              child: Image(image: AssetImage('images/logo.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              child: RaisedButton(
                color: Colors.red,
                child: Text(
                  "PLAY",
                  style: gameFont,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => World()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              child: RaisedButton(
                color: Colors.green,
                child: Text(
                  "MORE",
                  style: gameFont,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
