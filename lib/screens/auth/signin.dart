import 'package:chat9ja/custom_widgets/button.dart';
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
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.white38,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "Sign in Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Sign in to continue your social networking",
                      style: TextStyle(
                        color: Colors.white38,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
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
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.white38,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Button(
                      caption: "Sign In",
                      app: widget.app,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Center(
                      child: Text(
                        "Or via social media",
                        style: TextStyle(
                          color: Colors.white38,
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
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white38,
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
            color: app.lightMode ? Colors.black : Colors.white54,
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