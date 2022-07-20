import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.link),
                iconColor: Color(0xFF009688),
                prefixIconColor: Color(0xFF009688),
                labelText: 'Set url server',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ),
          MaterialButton(
            // ignore: sort_child_properties_last
            child: const Text('Test', style: TextStyle(color: Colors.white)),
            color: const Color(0xFF009688),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'lib/assets/images/world.png',
            height: 300,
            width: 300,
            scale: 0.9,
          ),
        ],
      ),
    );
  }
}
