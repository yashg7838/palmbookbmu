import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:palmbookbmu/utility/Utils.dart';
import 'package:palmbookbmu/widgets/buttons/button_1.dart';


class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * .3,
                  child: Image.asset("assets/images/Login_page_image.png"),
                ),
                Container(
                  width: width,
                  height: height * .6,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                      padding: EdgeInsets.only(bottom: 30.0),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700
                                        ),
                                      )
                                  ),


                                  SizedBox(
                                    height: 40,
                                    width: width * .9,
                                    child: TextFormField(
                                      controller: _emailController,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                      keyboardType:
                                      TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.alternate_email_rounded,
                                          color: Color(0xFF7E7E7E),
                                          size: 20,
                                        ),
                                        hintText: "Email Id",
                                        hintStyle: const TextStyle(
                                          color: Color(0xFF7E7E7E),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Color(0xFF9B9B9B),
                                              width: 0.5
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: .5
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                            width: .5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      height: 40,
                                      width: width * .9,
                                      child: TextFormField(
                                        controller: _passwordController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                        obscureText: true,
                                        obscuringCharacter: "*",
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.lock_outline_rounded,
                                            color: Color(0xFF7E7E7E),
                                            size: 20,
                                          ),
                                          hintText: "Password",
                                          hintStyle: const TextStyle(
                                            color: Color(0xFF7E7E7E),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                          ),
                                          suffix: InkWell(
                                              onTap: () {
                                                // Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen(),));
                                              },
                                              child: const Text("Forgot?")
                                          ),
                                          suffixStyle: const TextStyle(
                                              color: Color(0xFF0165FF),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            borderSide: const BorderSide(
                                                color: Color(0xFF9B9B9B),
                                                width: .5
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            borderSide: const BorderSide(
                                                color: Color(0xFFFF1D1D),
                                                width: .5
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: .5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),


                                  const SizedBox(
                                    height: 25,
                                  ),


                                  SizedBox(
                                    width: width * .9,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            signIN();
                                          },
                                          child: button_1(
                                              btn_width: (width * .9),
                                              btn_color: const Color(
                                                  0xFF0165FF),
                                              btn_text: "Login"
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: SizedBox(
                                      width: width * .9,
                                      child: Column(
                                        children: [
                                          // Row(
                                          //   mainAxisAlignment: MainAxisAlignment
                                          //       .spaceEvenly,
                                          //   children: [
                                          //     InkWell(
                                          //       onTap: () {
                                          //
                                          //       },
                                          //       child: Container(
                                          //         decoration: BoxDecoration(
                                          //             border: Border.all(
                                          //                 width: 1,
                                          //                 color: const Color(
                                          //                     0xFF969696)),
                                          //             borderRadius: BorderRadius
                                          //                 .circular(15)
                                          //         ),
                                          //         width: width * .223,
                                          //         height: 45,
                                          //         child: Center(
                                          //           child: Image.asset(
                                          //             "assets/icons/flat-color-icons_google.png",
                                          //             height: 28,
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     InkWell(
                                          //       onTap: () {
                                          //
                                          //       },
                                          //       child: Container(
                                          //         decoration: BoxDecoration(
                                          //             border: Border.all(
                                          //                 width: 1,
                                          //                 color: const Color(
                                          //                     0xFF969696)),
                                          //             borderRadius: BorderRadius
                                          //                 .circular(15)
                                          //         ),
                                          //         width: width * .223,
                                          //         height: 45,
                                          //         child: Center(
                                          //           child: Image.asset(
                                          //             "assets/icons/ic_round-facebook.png",
                                          //             height: 28,
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     InkWell(
                                          //       onTap: () {
                                          //
                                          //       },
                                          //       child: Container(
                                          //         decoration: BoxDecoration(
                                          //             border: Border.all(
                                          //                 width: 1,
                                          //                 color: const Color(
                                          //                     0xFF969696)),
                                          //             borderRadius: BorderRadius
                                          //                 .circular(15)
                                          //         ),
                                          //         width: width * .223,
                                          //         height: 45,
                                          //         child: Center(
                                          //           child: Image.asset(
                                          //             "assets/icons/ic_round-apple.png",
                                          //             height: 28,
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     )
                                          //   ],
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 40),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .center,
                                              children: [
                                                const Text(
                                                  "New to PalmBook?",
                                                ),
                                                GestureDetector(
                                                    child: const Text(
                                                      " Register.",
                                                      style: TextStyle(
                                                          color: Color(0xFF0165FF)
                                                      ),
                                                    ))

                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ), //


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signIN() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (lol) => Center(child: CircularProgressIndicator()),
    );
    try {
      final email = _emailController.text.trim();

      // if (!email.endsWith('@bmu.edu.in')) {
      //   Utils.showSnackBar('Please enter a valid BMU email address.');
      //   Navigator.of(context).pop(); // Close the loading dialog
      //   return;
      // }

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      Utils.showSnackBar(e.message);
    }
    // navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}