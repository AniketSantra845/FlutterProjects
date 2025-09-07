import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: MyAppBar(title: 'My App Bar'),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: const Text('Example Title'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(18, (i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  Text(
                    'This is Row ${i + 1}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  const Icon(Icons.favorite, color: Colors.red),
                ],
              ),
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: const Icon(Icons.add),
      ),
    );
  }
}
