import 'package:flutter/material.dart';
import 'package:forum/Screen/questionScreen.dart';
import 'signupScreen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: SafeArea(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               width: 200,
               height: 200,
               alignment: Alignment.center,
               //color: Colors.amber,
               child: Column(
                   children: [
                     Expanded(
                     child: Column(
                       children: [
                         Expanded(
                           flex: 1,
                           child: Text('用户名'),
                         ),
                         Expanded(
                           flex: 2,
                           child: TextFormField(
                             decoration: InputDecoration(labelText: '输入用户名'),
                           ),
                         ),
                       ],
                     ),
                   ), //账号
                     SizedBox(
                       height: 30,
                     ),
                     Expanded(
                       child: Column(
                         children: [
                           Expanded(
                             flex: 1,
                             child: Text('密码'),
                           ),
                           Expanded(
                             flex: 2,
                             child: TextFormField(
                               decoration: InputDecoration(labelText: '输入密码'),
                               obscureText: true,
                             ),
                           ),
                         ],
                       ),
                     ), //密码
                   ]

               ),
             ),

             SizedBox(
               height: 20,
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => questionScreen(),),);
                 },
                 child: Text('登录'),

               ),
                 SizedBox(
                   width: 40,
                 ),
                 ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => signupScreen()),);
                 }, child: Text('注册'),),
               ],
             ), //登录和注册按钮row
           ],
         ),
       ),
     ),
    );
  }
}
