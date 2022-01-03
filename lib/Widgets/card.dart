import 'package:flutter/material.dart';

class FormCard extends StatelessWidget {
  final String name;
  final String date;
  const FormCard({
    Key? key,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              date,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
