import 'package:flutter/material.dart';
import 'forumScreen.dart';

class questionScreen extends StatefulWidget {
  const questionScreen({Key? key}) : super(key: key);

  @override
  State<questionScreen> createState() => _questionScreenState();
}

class _questionScreenState extends State<questionScreen> {
  //TODO: actual questions and answers stored in questions.dart
  //TODO: need a method to calculate the score to determine if the user has passed

  List<bool> isSelected = [false, false, false, false];
  List<Widget> answers = [
    Text('揍TA'),
    Text('嘲笑TA'),
    Text('陪伴，安慰TA'),
    Text('远离TA')
  ];

  List<Widget> answers1 = [
    Text('生命过程的一部分 '),
    Text('需要感到羞耻的'),
    Text('不正常的'),
    Text('很开心的')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: AlignmentDirectional.topCenter,
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              questionWidget(
                answers: answers,
                isSelected: isSelected,
                question: " 当你的朋友正在经历失去亲人的悲痛的时候，你可以",
              ),
              questionWidget(
                answers: answers1,
                isSelected: isSelected,
                question: "失去亲友是",
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homeScreen()));
                },
                child: Text("提交"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class questionWidget extends StatelessWidget {
  const questionWidget({
    super.key,
    required this.answers,
    required this.isSelected,
    required this.question,
  });

  final List<Widget> answers;
  final List<bool> isSelected;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      alignment: AlignmentDirectional.center,
      width: 200,
      height: 400,
      //color: Colors.lightBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                question,
                //style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            //flex: 4,
            child: ToggleButtons(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                constraints: const BoxConstraints(
                  minHeight: 80,
                  minWidth: 200,
                ),
                onPressed: (int index) {
                  // setState(() {
                  //   // The button that is tapped is set to true, and the others to false.
                  //   for (int i = 0; i < isSelected.length; i++) {
                  //     isSelected[i] = i == index;
                  //   }
                  // });
                  //TODO: embed the setState function into the program so that the option updates
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
    );
  }
}
