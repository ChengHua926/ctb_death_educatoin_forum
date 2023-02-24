import 'package:flutter/material.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
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
                height: 300,
                alignment: Alignment.center,
                //color: Colors.amber,
                child: Column(
                    children: [
                      Expanded(
                        flex: 1,
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

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text('设定密码'),
                            ),
                            Expanded(
                              flex: 2,
                              child: TextFormField(
                                decoration: InputDecoration(labelText: '输入密码'),
                                obscureText: true,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text('核对密码'),
                            ),
                            Expanded(
                              flex: 2,
                              child: TextFormField(
                                decoration: InputDecoration(labelText: '请再次输入密码'),
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

              ElevatedButton(onPressed: (){}, child: Text('注册账号'),),//登录和注册按钮row
            ],
          ),
        ),
      ),
    );
  }
}
