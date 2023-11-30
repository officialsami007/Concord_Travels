import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView(
        children: [
          _buildListItem(
            context,
            'https://picsum.photos/200/300',
            'Title 1',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          _buildListItem(
            context,
            'https://picsum.photos/200/300',
            'Title 2',
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          ),
          _buildListItem(
            context,
            'https://picsum.photos/200/300',
            'Title 3',
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
          ),
          // Add more items as needed
        ],
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, String imageUrl, String title, String text) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: Image.network(
          imageUrl,
          width: 100.0,
          height: 100.0,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: IconButton(
          icon: Icon(Icons.favorite_border),
          onPressed: () {
            // Add your favorite button logic here
          },
        ),
      ),
    );
  }
}
