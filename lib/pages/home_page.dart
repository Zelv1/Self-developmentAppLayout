import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:second/pages/util/emoticon_face.dart';
import 'package:second/pages/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM, yyyy').format(DateTime.now());
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    //greetings row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Hi statement
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                'Hi, Zelv1!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(formattedDate.toString(),
                                style: TextStyle(color: Colors.blue[200])),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(Icons.notifications,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //search bar
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Row(
                          children: [
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    //vibes
                    const Row(
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
                        Icon(Icons.more_horiz, color: Colors.white),
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    // emoji
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😡',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('Bad', style: TextStyle(color: Colors.white))
                          ],
                        ),

                        //fine
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '😀'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('fine', style: TextStyle(color: Colors.white))
                          ],
                        ),

                        //well
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '🙂'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('well', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        //excelent
                        Column(
                          children: [
                            EmoticonFace(emoticonFace: '🤩'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('excelent',
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        // exersise heading
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Excersises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // listview of exerсises
                        Expanded(
                          child: ListView(
                            children: const [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercises: 16,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercises: 8,
                                color: Colors.green,
                              ),
                              ExerciseTile(
                                  icon: Icons.star,
                                  exerciseName: 'Writing Skills',
                                  numberOfExercises: 20,
                                  color: Colors.pink),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
