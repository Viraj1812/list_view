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
          return _buildListItem(
            index,
            arrNames[index],
          );
        },
        itemCount: arrNames.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }

  Widget _buildListItem(int index, String data) {
    return Container(
      color: Colors.purple,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$index',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            data,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
