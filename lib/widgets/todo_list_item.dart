import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Slidable(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                DateFormat('dd/MM/yyyy - EE - HH:mm').format(todo.dateTime),
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                todo.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        actionExtentRatio: 0.25, // tamanho que vai utilizar da largura
        actionPane: const SlidableStrechActionPane(),
        
        secondaryActions: [
          IconSlideAction(
            color: Colors.red,
            icon: Icons.delete,
            onTap: () {},
          )
        ],
        );
  }
}
