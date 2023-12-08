import 'package:flutter/material.dart';

class ListViewSeperated extends StatefulWidget {
  const ListViewSeperated({super.key});

  @override
  State<ListViewSeperated> createState() => _ListViewSeperatedState();
}

class _ListViewSeperatedState extends State<ListViewSeperated> {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman', 'Rajes', 'Viraj', 'Jay', 'Keval'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('List View Example'),
        ),

        //ListView:

        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: arrNames.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
              thickness: 0.5,
            );
          },
        ));
  }
}
