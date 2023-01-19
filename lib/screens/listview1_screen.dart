import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Dragon ball', 'Naruto GT', 'One pushman', 'Boruto'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                  ))
              .toList()

          // ListTile(
          //   leading: Icon(Icons.ac_unit_sharp),
          //   title: Text('Título del listview'),
          // )
        ],
      ),
    );
  }
}
