// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final color;
  final String exerciseName;
  final int numberOfExercises;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.color,
    required this.exerciseName,
    required this.numberOfExercises,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      color: color,
                      padding: EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '$numberOfExercises Exercises',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
