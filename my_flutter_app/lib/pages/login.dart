import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/signup.dart';
import 'package:my_flutter_app/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromARGB(211, 10, 124, 0),
                    Color.fromARGB(255, 197, 240, 197),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Text("Log In"),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Đăng nhập",
                            style: AppWidget.HeadLineTextFieldStyle(),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.semiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.email_outlined)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Mật khẩu',
                                hintStyle: AppWidget.semiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.password_outlined)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text("Quên mật khẩu?",
                                style: AppWidget.semiBoldTextFieldStyle()),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20),
                            elevation: 5,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 114, 207, 135),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text(
                                "Đăng nhập",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins1',
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => SignUp()));
                    // },
                    child: Text(
                      "Chưa có tài khoản hả?\n         Đăng ký ngay",
                      style: AppWidget.ssemiBoldTextFieldStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
