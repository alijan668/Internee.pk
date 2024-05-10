import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Provider_Class>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter App with Provider')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '${counter.count}',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              counter.decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
