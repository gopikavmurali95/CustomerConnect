import 'dart:convert';

import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart';
import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _usernamectrl = TextEditingController();
final _passwordctrl = TextEditingController();
final _formkey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserLoginBloc, UserLoginState>(
        listener: (context, state) {
          state.when(
            userLoginSuccessState: (user) async {
              if (user != null) {
                if (user.usrId != null && user.usrId!.isNotEmpty) {
                  final SharedPreferences sharedprefs =
                      await SharedPreferences.getInstance();

                  await sharedprefs.setString(
                    "user",
                    jsonEncode(user),
                  );

                  await sharedprefs.setBool('isLogin', true);
                  Future.delayed(const Duration(microseconds: 100), () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            user: user,
                          ),
                        ),
                        (route) => false);
                  });
                }
              }
            },
            userLoginFailedState: () {
              Navigator.pop(context);
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text('Failure'),
                  content: const Text('Something went wrong'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              );
            },
            loginLoadingState: () {
              showCupertinoModalPopup(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: const PopScope(
                          canPop: true,
                          child: CupertinoActivityIndicator(
                            animating: true,
                            color: Colors.red,
                            radius: 30,
                          ),
                        ),
                      ));
            },
          );
        },
        builder: (context, state) {
          return Form(
            key: _formkey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/bg.png",
                      ),
                      fit: BoxFit.cover)),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150.0, bottom: 20),
                    child: Image.asset(
                      "assets/images/logo_cc.png",
                      height: 70,
                      width: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 100,
                        //bottom: 50,
                        left: 45.0,
                        right: 45),
                    child: Container(
                      // height: 200,
                      //width: 00,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                // spreadRadius:0.5 ,
                                blurRadius: 0.2),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            // width: 600,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: TextFormField(
                              controller: _usernamectrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Username is required';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(top: 20),
                                hintText: "Username",
                                hintStyle: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      letterSpacing: 0,
                                      fontSize: 15),
                                ),
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20, //20.0,
                                    right: 20, //10,
                                    top: 20,
                                    bottom: 20, //30
                                  ),
                                  child: Image.asset(
                                    'assets/images/username.png',
                                    // width: 5,
                                    // height: 5,
                                    // fit: BoxFit.contain
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Divider(),
                          Container(
                            height: 60,
                            color: Colors.white,
                            child: TextFormField(
                              controller: _passwordctrl,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password is required';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      letterSpacing: 0,
                                      fontSize: 15),
                                ),
                                border: InputBorder.none,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20,
                                      top: 10,
                                      bottom: 30),
                                  child: Image.asset(
                                    'assets/images/password.png',
                                  ),
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20,
                                      top: 10,
                                      bottom: 30),
                                  child: Image.asset(
                                    'assets/images/eyes.png',
                                    // width: 20,
                                    // height: 20,
                                    // fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formkey.currentState!.validate()) {
                                context.read<UserLoginBloc>().add(
                                    const UserLoginEvent.loginLoadingEvent());
                                context.read<UserLoginBloc>().add(LoginEvent(
                                    username: _usernamectrl.text,
                                    password: _passwordctrl.text));
                              }
                            },
                            child: Container(
                              height: 62,
                              width: 500,
                              decoration: const BoxDecoration(
                                  color: Color(0xff68AEC8),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  )),
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
