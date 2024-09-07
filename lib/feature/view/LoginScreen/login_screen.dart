import 'dart:convert';

import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart';
import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
// import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
bool _passwordVisible = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserLoginBloc, UserLoginState>(
        listener: (context, state) {
          state.when(
            userLoginSuccessState: (user) async {
              if (user != null) {
                if (user.usrId != null &&
                    user.usrId!.isNotEmpty &&
                    user.usrId != '0') {
                  final SharedPreferences sharedprefs =
                      await SharedPreferences.getInstance();
                  await sharedprefs.setString(
                    "user",
                    jsonEncode(user),
                  );
                  await sharedprefs.setBool('isLogin', true);
                  Future.delayed(
                    const Duration(microseconds: 100),
                    () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(
                              user: user,
                            ),
                          ),
                          (route) => false);
                    },
                  );
                } else {
                  Navigator.pop(context);
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text('${user.title}'),
                      content: Text("${user.descr}"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Try again'),
                        ),
                      ],
                    ),
                  );
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
          return SingleChildScrollView(
            child: Form(
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 180.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Image.asset(
                        "assets/images/logo_cc.png",
                        /* height: 70.h,
                        width: 20, */
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          /* top: 0,
                          //bottom: 50, */
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                  contentPadding:
                                      const EdgeInsets.only(top: 20),
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
                                      left: 20,
                                      right: 20,
                                      top: 20,
                                      bottom: 10,
                                    ),
                                    child: Image.asset(
                                        'assets/images/username.png',
                                        width: 18.h,
                                        height: 18.h,
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                controller: _passwordctrl,
                                obscureText: !_passwordVisible,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Password is required';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(top: 10),
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
                                        left: 20,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    child: Image.asset(
                                        'assets/images/password.png',
                                        width: 18.h,
                                        height: 18.h,
                                        fit: BoxFit.contain),
                                  ),
                                  /* suffixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 20,
                                        top: 10,
                                        bottom: 10),
                                    child: Image.asset(
                                      'assets/images/eyes.png',
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.fill,
                                    ),
                                  ), */
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.only(top: 4.h),
                                    child: IconButton(
                                      icon: Icon(
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
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
                                height: 50.h,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0xff68AEC8),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
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
            ),
          );
        },
      ),
    );
  }
}
