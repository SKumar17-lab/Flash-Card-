import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FlashcardApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class FlashcardApp extends StatefulWidget {
  @override
  _FlashcardAppState createState() => _FlashcardAppState();
}

class _FlashcardAppState extends State<FlashcardApp> {
  List<Map<String, String>> cards = [
    {"q": "What is Flutter?", "a": "Flutter is a UI toolkit by Google"},
    {"q": "Capital of India?", "a": "New Delhi"},
    {"q": "What is Dart?", "a": "Programming language for Flutter"},
  ];

  int index = 0;
  bool showAns = false;

  void addEditCard({bool isAdd = true}) {
    TextEditingController qCtrl = TextEditingController(
        text: isAdd ? "" : cards[index]["q"]);
    TextEditingController aCtrl = TextEditingController(
        text: isAdd ? "" : cards[index]["a"]);

    showDialog(
      context: context,
      builder: (c) => AlertDialog(
        title: Text(isAdd ? "Add New Card" : "Edit Card"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                controller: qCtrl,
                decoration: InputDecoration(labelText: "Question")),
            SizedBox(height: 10),
            TextField(
                controller:
