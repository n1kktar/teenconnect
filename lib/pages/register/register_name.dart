import 'package:flutter/material.dart';
import 'package:teenconnect/pages/register/register_age.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  RegisterPage({super.key});

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
              const Text('Как тебя зовут?'),
              const SizedBox(height: 20),
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Введите ваше имя',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RegisterAge(name: _controller.text)),
                        );
                      },
                      child: const Text('Далее')))
            ],
          ),
        ),
      ),
    );
  }
}
