import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ajib",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return ListView(children: [
      CheckboxListTile(
          title: Text("ajib"),
          value: false,
          onChanged: (value) {
            print("Ajib");
          },
      )
    ],);
  }

}