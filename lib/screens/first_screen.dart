import 'package:flutter/material.dart';
import 'package:lab_1/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {

  const FirstScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Первый экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Введите имя"
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondScreen(name: _name.text)));
                }, 
                child: const Text("Второй экран"))
          ],
        ),
      ),
    );
  }
}
