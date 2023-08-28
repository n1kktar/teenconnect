import 'package:flutter/material.dart';

class RegisterAge extends StatelessWidget {
  final String name;

  const RegisterAge({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Padding(
              padding: EdgeInsets.all(30),
              child: Center(child: Text('TeenConnect')))),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Привет {$name}'),
              const SizedBox(height: 30),
              const Text('Сколько тебе лет?'),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Введите ваш возраст',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: FilledButton(
                      onPressed: () {}, child: const Text('Далее')))
            ],
          ),
        ),
      ),
    );
  }
}
