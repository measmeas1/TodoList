// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
final String taskName;
final bool taskComplete;
Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskComplete,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Container(
        padding: EdgeInsets.all(22),
        child: Row(
          children: [
            Checkbox(value: taskComplete, onChanged: onChanged),

            Text(
              taskName,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(11),
        
        ),
      ),
    );
  }
}