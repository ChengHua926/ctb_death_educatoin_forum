import 'package:flutter/material.dart';

class questionScreen extends StatefulWidget {
  const questionScreen({Key? key}) : super(key: key);

  @override
  State<questionScreen> createState() => _questionScreenState();
}

class _questionScreenState extends State<questionScreen> {

  List<bool> isSelected = [false, false, false, false];
  List<Widget> answers = [Text('answer1'), Text('answer2'), Text('answer3'), Text('answer4')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(  //entire screen column
            children: [
              Expanded(
                child: Column(
                children: [
                  Expanded(
                    flex: 1,
                      child: Text('Question Text', style: TextStyle(fontSize: 20),)),
                  Expanded(
                    flex: 4,
                    child: ToggleButtons(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        constraints: const BoxConstraints(
                          minHeight: 60,
                          minWidth: 150,
                        ),
                        onPressed: (int index) {
                          setState(() {
                            // The button that is tapped is set to true, and the others to false.
                            for (int i = 0; i < isSelected.length; i++) {
                              isSelected[i] = i == index;
                            }
                          });
                        },
                        fillColor: Colors.amber,
                        selectedBorderColor: Colors.amber[900],
                        selectedColor: Colors.blue,
                        direction: Axis.vertical,
                        children: answers,
                        isSelected: isSelected),
                  )

              ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
