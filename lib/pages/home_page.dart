// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dribble/util/exercise_tile.dart';
import 'package:dribble/util/emoticon_face.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[800],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.blue[600],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            //column for blue area
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi Jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Amrith!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),
                          //Date Text
                          Text(
                            "03 Aug, 2023",
                            style: TextStyle(
                                color: Color.fromARGB(120, 255, 255, 255)),
                          )
                        ],
                      ),

                      //Bell icon
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(50, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  //Space Box
                  SizedBox(
                    height: 25,
                  ),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(40, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Space Box
                  SizedBox(
                    height: 25,
                  ),

                  //How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),

                  //Space Box
                  SizedBox(
                    height: 25,
                  ),

                  //Emojis
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😢',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😕',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😊',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      //Excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😍',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                padding: EdgeInsets.only(top: 25, left: 35, right: 25),
                child: Center(
                  child: Column(
                    children: [
                      //Exercise Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //Lists
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.groups_outlined,
                              color: Colors.orange,
                              exerciseName: 'Speaking Skills',
                              numberOfExercises: 15,
                            ),
                            ExerciseTile(
                              icon: Icons.menu_book_rounded,
                              color: Colors.blue,
                              exerciseName: 'Reading Skills',
                              numberOfExercises: 11,
                            ),
                            ExerciseTile(
                              icon: Icons.sports_basketball_sharp,
                              color: Colors.pink[400],
                              exerciseName: 'Physical Health',
                              numberOfExercises: 12,
                            ),
                            ExerciseTile(
                              icon: Icons.fastfood,
                              color: Colors.green,
                              exerciseName: 'Food Control',
                              numberOfExercises: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Children {}
