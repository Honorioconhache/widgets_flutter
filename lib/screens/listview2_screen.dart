import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Dragon ball', 'Naruto GT', 'One pushman', 'Boruto'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo,
          title: const Text('Listview2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.indigo,
            ),
            onTap: () {
              //print(options[i]);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
