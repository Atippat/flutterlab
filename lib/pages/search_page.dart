import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),backgroundColor: Color.fromARGB(255, 1, 202, 172),
      ),
      body: _buildBody(), // Create this method to build the search content
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with actual search results count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Search Result $index'),
                  // Add onTap functionality to navigate to result details
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}