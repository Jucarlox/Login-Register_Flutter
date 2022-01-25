import 'package:flutter/material.dart';

void main() => runApp(const LoginRegister());

class LoginRegister extends StatelessWidget {
  const LoginRegister({Key? key}) : super(key: key);

  static const String _title = 'Login y Registro';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Hello Again!',
                    style: TextStyle(
                        color: Color(0xFF311B92),
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Wellcome back you´ve',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'been missed!',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        labelText: 'Enter Username',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                child: TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Recovery Password',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Container(
                    height: 57,
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: ElevatedButton(
                        child: const Text('Sing in'),
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(
                          0XFFEF5350,
                        )),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 50,
                        height: 50,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Row(
                  children: <Widget>[
                    const Text('Not a member?', style: TextStyle(fontSize: 12)),
                    TextButton(
                      child: const Text(
                        'Register now',
                        style: TextStyle(fontSize: 12),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          )),
    );
  }
}
