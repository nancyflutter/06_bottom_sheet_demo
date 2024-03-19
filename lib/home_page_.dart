import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showModalBottomSheet(context);
          },
          child: const Text("Show Model BottomSheet"),
        ),
      ),
    );
  }

  Future<dynamic> _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: 40,  /// Enter here item count as per requirement
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.teal[100],
              title:  Text("Data ${index + 1}"),
            );
          },
        );
      },
    );
  }
}
