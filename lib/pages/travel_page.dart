import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Escoger Ruta a Abordar',
                  style: TextStyle(fontSize: 18)),
              DropdownButton(
                value: _value,
                items: const <DropdownMenuItem<int>>[
                  DropdownMenuItem(
                    value: 1,
                    child: Text('Ruta 1'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('Ruta 2'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('Ruta 3'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('Ruta 4'),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text('Ruta 5'),
                  ),
                  DropdownMenuItem(
                    value: 6,
                    child: Text('Ruta 6'),
                  ),
                  DropdownMenuItem(
                    value: 7,
                    child: Text('Ruta 7'),
                  ),
                  DropdownMenuItem(
                    value: 8,
                    child: Text('Ruta 8'),
                  ),
                  DropdownMenuItem(
                    value: 9,
                    child: Text('Ruta 9'),
                  ),
                  DropdownMenuItem(
                    value: 10,
                    child: Text('Ruta 10'),
                  ),
                  DropdownMenuItem(
                    value: 11,
                    child: Text('Ruta 11'),
                  ),
                  DropdownMenuItem(
                    value: 12,
                    child: Text('Ruta 12'),
                  ),
                  DropdownMenuItem(
                    value: 13,
                    child: Text('Ruta 13'),
                  ),
                  DropdownMenuItem(
                    value: 14,
                    child: Text('Ruta 14'),
                  ),
                  DropdownMenuItem(
                    value: 15,
                    child: Text('Ruta 15'),
                  ),
                  DropdownMenuItem(
                    value: 16,
                    child: Text('Ruta 16'),
                  ),
                  DropdownMenuItem(
                    value: 17,
                    child: Text('Ruta 17'),
                  ),
                  DropdownMenuItem(
                    value: 18,
                    child: Text('Ruta 18'),
                  ),
                  DropdownMenuItem(
                    value: 19,
                    child: Text('Ruta 19'),
                  ),
                  DropdownMenuItem(
                    value: 20,
                    child: Text('Ruta 20'),
                  ),
                  DropdownMenuItem(
                    value: 21,
                    child: Text('Ruta 21'),
                  ),
                  DropdownMenuItem(
                    value: 22,
                    child: Text('Ruta 22'),
                  ),
                  DropdownMenuItem(
                    value: 23,
                    child: Text('Ruta 23'),
                  ),
                  DropdownMenuItem(
                    value: 24,
                    child: Text('Ruta 24'),
                  ),
                  DropdownMenuItem(
                    value: 25,
                    child: Text('Ruta 25'),
                  ),
                  DropdownMenuItem(
                    value: 26,
                    child: Text('Ruta 26'),
                  ),
                  DropdownMenuItem(
                    value: 27,
                    child: Text('Ruta 27'),
                  ),
                ],
                onChanged: (int? value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ],
          ),
          Text("$_value")
        ],
      ),
    );
  }
}
