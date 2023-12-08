import 'package:flutter/material.dart';

class ListViewCustom extends StatefulWidget {
  const ListViewCustom({super.key});

  @override
  State<ListViewCustom> createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
  List<String> items = <String>['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('List View Example'),
      ),

      //ListView:

      body: ListView.custom(
        /*
        childrenDelegate: SliverChildListDelegate(
          [
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
          ],
        ),
        */

        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return _buildListItem(index);
          },
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
      height: 100,
      color: Colors.purple,
      child: Text(
        'Item $index',
        style: const TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
