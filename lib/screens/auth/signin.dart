import 'package:chat9ja/custom_widgets/auth_description.dart';
import 'package:http/http.dart' as http;
import 'package:chat9ja/custom_widgets/social_button.dart';
import 'package:chat9ja/models/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Signin extends StatefulWidget {
  final App app;
  const Signin({Key? key, required this.app}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  test() async {
    var url = Uri.parse('http://127.0.0.1:8000');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');

    // print(await http.read(Uri.parse('https://example.com/foobar.txt')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.app.bgColor(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    AuthDescription(widget.app,
                        line1: "Welcome Back",
                        line2: "Sign in Now",
                        line3: "Sign in to continue your social networking"),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                        caption: "Email or Username",
                        placeholder: "username@email.com",
                        app: widget.app),
                    customTextField(
                        caption: "Password",
                        placeholder: "Type Password",
                        app: widget.app,
                        obscureText: true),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: widget.app.lightMode
                                ? Colors.black54
                                : Colors.white54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            color: widget.app.themeColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text("Sign In",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      onTap: () {
                        test();
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        "Or via social media",
                        style: TextStyle(
                          color: widget.app.lightMode
                              ? Colors.black54
                              : Colors.white54,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            socialButton(
                              imageUrl: "assets/images/socials/fb.png",
                              withBg: true,
                            ),
                            socialButton(
                              imageUrl: "assets/images/socials/wechat.png",
                              color: const Color(0XFF7BB32E),
                            ),
                            socialButton(
                              imageUrl: "assets/images/socials/google.png",
                              color: const Color(0XFFFF1F1F),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: widget.app.lightMode
                          ? Colors.black54
                          : Colors.white54,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: widget.app.themeColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  customTextField(
      {required String caption,
      required String placeholder,
      required App app,
      bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          caption,
          style: TextStyle(
            fontSize: 14,
            color: app.lightMode ? Colors.black45 : Colors.white54,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: obscureText,
          style: TextStyle(
            color: app.lightMode ? Colors.black : Colors.white,
            fontSize: 16,
          ),
          decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(
                color: app.themeColor,
                fontSize: 16,
              ),
              labelStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: app.themeColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: app.lightMode ? Colors.black : Colors.white,
                ),
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ],
    );
  }
}
