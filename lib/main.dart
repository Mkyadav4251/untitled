import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(home: SimpalForm()));
}

class SimpalForm extends StatefulWidget {
  @override
  State<SimpalForm> createState() => _SimpalFormState();
}

class _SimpalFormState extends State<SimpalForm> {
  TextStyle getmystyle() {
    return TextStyle(fontFamily: "Font");
  }

  final List<Color> Mk = [Colors.black, Colors.red, Colors.brown];
  final List<String> boxTexts = ["Box 0", "Box 2", "Box 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style: getmystyle(),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: Mk.length,
                    itemBuilder: (context, index, _) { // <- Use `_` to ignore the second parameter
                      final color = Mk[index];
                      final boxText = boxTexts[index];
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: color,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                boxText,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        enlargeCenterPage: true, autoPlay: true, height: 400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

