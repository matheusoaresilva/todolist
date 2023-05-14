import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('20/11/2023',
          style: TextStyle(
            fontSize: 12,
          ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
