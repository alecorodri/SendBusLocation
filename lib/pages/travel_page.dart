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
