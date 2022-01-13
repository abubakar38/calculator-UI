import 'package:flutter/material.dart';

class Calcutor extends StatefulWidget {
  Calcutor({Key? key}) : super(key: key);

  @override
  State<Calcutor> createState() => _CalcutorState();
}

class _CalcutorState extends State<Calcutor> {
  String input = '', value = '';
  int value1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(
            fontSize: 36,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFAD1457),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "$input",
                      style: TextStyle(fontSize: 38),
                    ),
                    Text(
                      " = 57",
                      style: TextStyle(fontSize: 38),
                    ),
                  ],
                ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // ignore: avoid_print
                      print("priess 1");
                      setState(() {
                        input = input + '1';
                        print(input);
                      });
                    },
                    child: Container(
                      color: const Color(0xFFAD1457),
                      child: const Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 36),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFC2185B),
                    child: const Text(
                      "2",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFD81B80),
                    child: const Text(
                      "3",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        input = input + '+';
                        value1 = int.parse(value);
                      });
                    },
                    child: Container(
                      color: const Color(0xFFE91E63),
                      child: const Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 36),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFE91E63),
                    child: const Text(
                      "4",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFD81B80),
                    child: const Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFC2185B),
                    child: const Text(
                      "6",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFAD1457),
                    child: const Icon(
                      Icons.remove,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFAD1457),
                    child: const Text(
                      "7",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFC2185B),
                    child: const Text(
                      "8",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFD81B80),
                    child: const Text(
                      "9",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFE91E63),
                    child: const Icon(
                      Icons.clear,
                      size: 36,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFE91E63),
                    child: const Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFD81B80),
                    child: const Text(
                      "C",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFC2185B),
                    child: const Text(
                      "=",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFAD1457),
                    child: const Text(
                      "/ ",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
