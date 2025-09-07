import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My App',
      home: SafeArea(child: MyScaffold()),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: const Color.fromARGB(255, 33, 82, 243)),

      //Row is a horizontal in linear layout
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          Expanded(child: title),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Title Bar !!',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          const Expanded(child: Center(child: Text('Hello World !!'))),
        ],
      ),
    );
  }
}
