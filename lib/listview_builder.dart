import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman', 'Rajes', 'Viraj', 'Jay', 'Keval'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('List View Example'),
        ),

        //ListView:

        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          itemExtent: 50,
          scrollDirection: Axis.vertical,
        ));
  }
}
