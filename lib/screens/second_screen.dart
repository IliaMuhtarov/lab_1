import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String name;

  SecondScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Второй экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24),
                "${name}"),

            SizedBox(
              height: 12,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Назад"))
          ],
        ),
      ),
    );
  }
}
