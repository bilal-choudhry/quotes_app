import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _index = 0;
  List quotes = [
    "The greatest glory in living lies"
        " not in never falling, but in rising every time we fall. -Nelson Mandela",
    "The way to get started is to quit talking and begin doing. -Walt Disney",
    "Your time is limited, so don't waste it living someone else's life. Don't "
        "be trapped by dogma – which is living with the results of other people'"
        "s thinking. -Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. -"
        "Eleanor Roosevelt",
    "If you look at what you have in life, you'll always have more. If you look"
        " at"
        " what you don't have in life, you'll never have enough. -Oprah Winfrey",
    "If you set your goals ridiculously high and it's a failure, you will fail"
        " above everyone else's success. -James Cameron",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                alignment: Alignment.center,

                  width: 350,
                  height: 200,
                  color: Colors.transparent,
                  child: Text("${quotes[_index % quotes.length]}", style: TextStyle(
                      fontStyle: FontStyle.italic
                  ),)),
            ),
            Divider(thickness: 1.3,),
            TextButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent.shade400)),
                onPressed: () {
                  setState(() {
                    _index += 1;
                  });
                },
                icon: Icon(
                  Icons.wb_sunny,
                  color: Colors.yellow,
                ),
                label: Text("Inspire Me!", style: TextStyle( color: Colors.black),)),
            Spacer()
          ],
        ),
      ),
    );
  }
}
